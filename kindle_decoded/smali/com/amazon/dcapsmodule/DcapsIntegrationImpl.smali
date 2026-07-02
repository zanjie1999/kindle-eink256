.class public Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;
.super Ljava/lang/Object;
.source "DcapsIntegrationImpl.java"

# interfaces
.implements Lcom/amazon/kindle/dcaps/IDCAPSIntegration;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.dcapsmodule.DcapsIntegrationImpl"


# instance fields
.field downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    return-void
.end method

.method private logHeaders(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    sget-object v4, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 54
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->TAG:Ljava/lang/String;

    const-string v1, "No headers passed"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remoteSignedRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/amazon/kindle/dcaps/common/ResponseHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/amazon/kindle/dcaps/common/ResponseHandler;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p3}, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->logHeaders(Ljava/util/Map;)V

    .line 35
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsIntegrationImpl;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    new-instance v8, Lcom/amazon/dcapsmodule/DcapsWebRequest;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/dcapsmodule/DcapsWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/amazon/kindle/dcaps/common/ResponseHandler;)V

    invoke-interface {v0, v8}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method
