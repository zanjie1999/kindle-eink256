.class public abstract Lcom/amazon/kindle/webservices/ProxyWebRequest;
.super Ljava/lang/Object;
.source "ProxyWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequest;


# instance fields
.field private domain:Ljava/lang/String;

.field protected proxy:Lcom/amazon/kindle/webservices/IWebRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->cancel()V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->execute()V

    return-void
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/kindle/webservices/WebRequestErrorState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/webservices/WebRequestErrorState;->toWebRequestErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/webservices/WebRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    return-object v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getExecutionCompleteTime()J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getExecutionCompleteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostFormData()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getPostFormData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacySafeUrl()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHeaderNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetries()I

    move-result v0

    return v0
.end method

.method public getRetryAttempts()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetryAttempts()I

    move-result v0

    return v0
.end method

.method public getStatusAndProgressTracker()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getTimeout()I

    move-result v0

    return v0
.end method

.method public getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isAuthenticationRequired()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isNetworkAllowedToUse()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isNetworkAllowedToUse()Z

    move-result v0

    return v0
.end method

.method public onBeforeExecute()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->onBeforeExecute()V

    return-void
.end method

.method public onRequestComplete()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method

.method public registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public resetRequestState()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->resetRequestState()V

    return-void
.end method

.method public setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->domain:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/amazon/kindle/webservices/WebRequestErrorState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;->toKRXRequestErrorState(Lcom/amazon/kindle/webservices/WebRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public setExecutionCompleteTime(J)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setExecutionCompleteTime(J)V

    return-void
.end method

.method public setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setRetryAttempts(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetryAttempts(I)V

    return-void
.end method

.method public setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method
