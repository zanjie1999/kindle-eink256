.class Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "CustomerBenefitsWebRequest.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final callback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final clientId:Ljava/lang/String;

.field private result:Lcom/amazon/kindle/callback/OperationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/application/IApplicationManager;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->clientId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->callback:Lcom/amazon/kindle/callback/ICallback;

    .line 45
    iput-object p2, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->getCustomerBenefitsUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 48
    new-instance p1, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance p2, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest$1;-><init>(Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;)V

    invoke-direct {p1, p2}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 56
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private getCustomerBenefitsUrl()Ljava/lang/String;
    .locals 3

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getCustomerBenefitsURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?apiVersion=1.0&clientId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&deviceTypeId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&format=json"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x-access-token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getIdentityCookies()[Ljava/lang/String;

    move-result-object v1

    .line 107
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 108
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method handleResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string/jumbo v0, "status"

    .line 61
    new-instance v1, Lcom/amazon/kindle/callback/OperationResult;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->result:Lcom/amazon/kindle/callback/OperationResult;

    const/16 v1, 0x28

    if-nez p1, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    const-string v0, "Response null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 65
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->result:Lcom/amazon/kindle/callback/OperationResult;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 75
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    sget-object p1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    const-string v0, "Response status: UNKNOWN"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBeforeExecute()V
    .locals 3

    .line 116
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    const-string v2, "CustomerBenefitsWebRequestOnBeforeExecuted"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onBeforeExecute()V

    return-void
.end method

.method public onRequestComplete()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->callback:Lcom/amazon/kindle/callback/ICallback;

    iget-object v1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->TAG:Ljava/lang/String;

    const-string v2, "OnCustomerBenefitsWebRequestComplete"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
