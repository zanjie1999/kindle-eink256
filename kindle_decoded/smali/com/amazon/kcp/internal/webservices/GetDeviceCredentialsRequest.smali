.class public Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetDeviceCredentialsRequest.java"


# instance fields
.field private final onSuccess:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;",
            ">;"
        }
    .end annotation
.end field

.field private resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "J",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NO_URL_YET"

    .line 31
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    .line 37
    sget-object v1, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    .line 39
    iput-object p5, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->onSuccess:Lcom/amazon/kindle/callback/ICallback;

    const-string p1, "?reason=TodoItem."

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&softwareVersion="

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    new-instance p1, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;

    iget-object p2, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/RegisterContentHandler;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 p2, 0x7530

    .line 47
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 49
    new-instance p2, Lcom/amazon/kindle/webservices/XmlResponseHandler;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 7

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v5, "AmazonKindle"

    const-string v6, "GetDeviceCredentialsCommand"

    invoke-direct {v4, v5, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "LoginError"

    .line 58
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 59
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 57
    invoke-virtual {v3, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 61
    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v3, Lcom/amazon/kcp/application/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->onSuccess:Lcom/amazon/kindle/callback/ICallback;

    new-instance v3, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v4, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {v3, v4}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
