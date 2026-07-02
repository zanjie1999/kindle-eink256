.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;
.super Ljava/lang/Object;
.source "StandardAmazonWebServiceCallback.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# static fields
.field private static final MAX_RESPONSE_LOG_SIZE:I = 0x400


# instance fields
.field private mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

.field private mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

.field private mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

.field private mResponseString:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DefaultAmazonWebserviceCallListener;

    invoke-direct {p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DefaultAmazonWebserviceCallListener;-><init>()V

    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    .line 34
    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 39
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;)V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    :cond_1
    return-void
.end method

.method private appendToResponseString([BI)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p2

    if-le v0, v1, :cond_1

    .line 74
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    rsub-int p2, p2, 0x400

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

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

    .line 125
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getError"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 126
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

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->appendToResponseString([BI)V

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onDataReceived([BI)V

    :goto_0
    return-void
.end method

.method public onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onNetworkFailure()V

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onProgress(II)V

    return-void
.end method

.method public onRequestComplete()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->authenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onAuthenticationFailed()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->responseHasError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;->onResponseComplete(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
