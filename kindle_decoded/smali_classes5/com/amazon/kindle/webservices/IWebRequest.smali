.class public interface abstract Lcom/amazon/kindle/webservices/IWebRequest;
.super Ljava/lang/Object;
.source "IWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract execute()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
.end method

.method public abstract getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.end method

.method public abstract getExecutionCompleteTime()J
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpVerb()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPostFormData()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
.end method

.method public abstract getPrivacySafeUrl()Ljava/lang/String;
.end method

.method public abstract getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
.end method

.method public abstract getResponseHeaderNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetries()I
.end method

.method public abstract getRetryAttempts()I
.end method

.method public abstract getStatusAndProgressTracker()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeout()I
.end method

.method public abstract getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isAuthenticationRequired()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isNetworkAllowedToUse()Z
.end method

.method public abstract onBeforeExecute()V
.end method

.method public abstract onRequestComplete()Z
.end method

.method public abstract registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract resetRequestState()V
.end method

.method public abstract setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
.end method

.method public abstract setExecutionCompleteTime(J)V
.end method

.method public abstract setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setRetryAttempts(I)V
.end method

.method public abstract setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;
.end method

.method public abstract setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
.end method
