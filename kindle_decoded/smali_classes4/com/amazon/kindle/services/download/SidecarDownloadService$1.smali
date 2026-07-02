.class Lcom/amazon/kindle/services/download/SidecarDownloadService$1;
.super Lcom/amazon/kindle/webservices/ProxyWebRequest;
.source "SidecarDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/download/SidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/download/SidecarDownloadService;

.field final synthetic val$bookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$request:Lcom/amazon/kindle/webservices/IWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/download/SidecarDownloadService;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->this$0:Lcom/amazon/kindle/services/download/SidecarDownloadService;

    iput-object p3, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p4, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$request:Lcom/amazon/kindle/webservices/IWebRequest;

    iput-object p5, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$guid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/ProxyWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 8

    .line 56
    invoke-super {p0}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->onRequestComplete()Z

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->this$0:Lcom/amazon/kindle/services/download/SidecarDownloadService;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v1, v2}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->access$000(Lcom/amazon/kindle/services/download/SidecarDownloadService;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 59
    invoke-static {}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->access$100()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished sidecar download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$request:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and guid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;->val$guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "SidecarDownload"

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    const-string v5, "Success"

    aput-object v5, v3, v4

    const-string v4, "%s:%s"

    .line 63
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 62
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->access$100()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished sidecar download with error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->access$200()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    const-string v5, "Error"

    aput-object v5, v7, v4

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/ProxyWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const-string v3, "%s:%s:%s"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_0
    return v0
.end method
