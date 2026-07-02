.class Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;
.super Ljava/lang/Object;
.source "StandardWebRequestEngineDelegate.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebRequestEngineDelegateCallback"
.end annotation


# instance fields
.field private mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

.field private mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    if-eqz p2, :cond_0

    .line 24
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;)V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBodyChunkReceived([BI)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->shouldPassBodyChunks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->bodyChunkReceived([BI)V

    :cond_1
    return-void
.end method

.method public onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->headersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->networkError()V

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method

.method public onRequestComplete()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mAuthRespHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->authenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->authenticationFailed()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardWebRequestEngineDelegate$WebRequestEngineDelegateCallback;->mCallback:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;->requestComplete()V

    :goto_0
    return-void
.end method
