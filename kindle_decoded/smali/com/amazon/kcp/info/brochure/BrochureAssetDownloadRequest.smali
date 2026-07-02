.class Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "BrochureAssetDownloadRequest.java"


# static fields
.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_IN_QUEUE:Ljava/lang/String; = "TimeInQueue"


# instance fields
.field private final downloadedFile:Ljava/io/File;

.field private exception:Ljava/lang/Exception;

.field private final metricTimerKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->TAG:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p3}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->downloadedFile:Ljava/io/File;

    .line 45
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 46
    invoke-virtual {p3, p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->setRequest(Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;)V

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->metricTimerKey:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->metricTimerKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->downloadedFile:Ljava/io/File;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->downloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricTimerKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->metricTimerKey:Ljava/lang/String;

    return-object v0
.end method

.method public onBeforeExecute()V
    .locals 4

    .line 53
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->METRICS_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->metricTimerKey:Ljava/lang/String;

    const-string v3, "TimeInQueue"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->metricTimerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 55
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onBeforeExecute()V

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->exception:Ljava/lang/Exception;

    return-void
.end method
