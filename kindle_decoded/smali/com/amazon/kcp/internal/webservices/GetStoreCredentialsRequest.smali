.class public Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetStoreCredentialsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;
    }
.end annotation


# static fields
.field private static final COOKIE_LIST_NODE:Ljava/lang/String; = "cookies"

.field private static final COOKIE_NODE:Ljava/lang/String; = "cookie"

.field private static final RESPONSE_NODE:Ljava/lang/String; = "response"

.field private static final TAG:Ljava/lang/String;

.field private static final URL_NODE:Ljava/lang/String; = "url"

.field private static final VALUE_NODE:Ljava/lang/String; = "value"


# instance fields
.field model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

.field webStoreController:Lcom/amazon/kcp/store/IWebStoreController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/IWebStoreController;)V
    .locals 4

    const-string v0, "NO_URL_YET"

    .line 33
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getStoreCredentialsURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-direct {v1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    .line 38
    new-instance v1, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;

    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    .line 39
    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v3, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    .line 43
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 46
    new-instance p1, Lcom/amazon/kindle/webservices/XmlResponseHandler;

    invoke-direct {p1, v1}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 48
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v1, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->webStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebStoreController;->populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "StoreCredentialsCommand"

    const-string v3, "CredentialsRequestError"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v1, Lcom/amazon/kcp/application/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    .line 61
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
