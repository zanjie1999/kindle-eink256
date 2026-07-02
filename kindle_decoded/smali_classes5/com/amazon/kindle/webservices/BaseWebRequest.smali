.class public Lcom/amazon/kindle/webservices/BaseWebRequest;
.super Ljava/lang/Object;
.source "BaseWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequest;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field private domain:Ljava/lang/String;

.field private errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private isAuthenticationRequired:Z

.field protected isCancelled:Z

.field private postData:Ljava/lang/String;

.field private priority:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field private requestStartToCompleteTime:J

.field private responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

.field private retries:I

.field private retryAttempts:I

.field protected statusTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/BaseWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retries:I

    .line 32
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retryAttempts:I

    .line 33
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->timeout:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->requestStartToCompleteTime:J

    .line 46
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    iput-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->priority:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->headers:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->url:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->statusTrackers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->isCancelled:Z

    .line 200
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onCancel()V

    .line 203
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->onRequestCanceled()V

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/kindle/webservices/WebRequestErrorState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/webservices/WebRequestErrorState;->toWebRequestErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/webservices/WebRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getExecutionCompleteTime()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->requestStartToCompleteTime:J

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

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->postData:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GET"

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPostFormData()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->priority:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object v0
.end method

.method public getPrivacySafeUrl()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

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

    .line 95
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->RESPONSE_HEADERS:Ljava/util/List;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retries:I

    return v0
.end method

.method public getRetryAttempts()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retryAttempts:I

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

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->statusTrackers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->statusTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->timeout:I

    return v0
.end method

.method public getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->currentTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->isAuthenticationRequired:Z

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->isCancelled:Z

    return v0
.end method

.method public isNetworkAllowedToUse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBeforeExecute()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retryAttempts:I

    return-void
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method public onRequestComplete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->statusTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    sget-object p1, Lcom/amazon/kindle/webservices/BaseWebRequest;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register null status tracker in BaseWebRequest"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public resetRequestState()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorContext(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retryAttempts:I

    return-void
.end method

.method public setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->isAuthenticationRequired:Z

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->domain:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/amazon/kindle/webservices/WebRequestErrorState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;->toKRXRequestErrorState(Lcom/amazon/kindle/webservices/WebRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public setExecutionCompleteTime(J)V
    .locals 0

    .line 258
    iput-wide p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->requestStartToCompleteTime:J

    return-void
.end method

.method public setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->postData:Ljava/lang/String;

    return-object p0
.end method

.method public setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->priority:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object p0
.end method

.method public setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    return-object p0
.end method

.method public setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 117
    iput p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retries:I

    return-object p0
.end method

.method public setRetryAttempts(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->retryAttempts:I

    return-void
.end method

.method public setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 138
    iput p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->timeout:I

    return-object p0
.end method

.method public setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->currentTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequest;->url:Ljava/lang/String;

    return-object p0
.end method
