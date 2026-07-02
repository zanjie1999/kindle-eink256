.class public Lcom/amazon/kindle/download/manifest/ManifestWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "ManifestWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IManifestWebRequest;


# instance fields
.field private contentSize:J

.field private downloadDoneTime:J

.field private httpEndTime:J

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private manifestParsingDoneTime:J

.field final params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field private requestEndTime:J

.field private requestEnqueueTime:J

.field private requestStartTime:J

.field private streamingStartTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestEnqueueTime:J

    .line 26
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestStartTime:J

    .line 27
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->httpEndTime:J

    .line 28
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->streamingStartTime:J

    .line 29
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->downloadDoneTime:J

    .line 30
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->manifestParsingDoneTime:J

    .line 31
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestEndTime:J

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->contentSize:J

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 45
    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    .line 46
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->contentSize:J

    return-wide v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDoneTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->downloadDoneTime:J

    return-wide v0
.end method

.method public getDownloadTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v0

    return-object v0
.end method

.method public getRequestEnqueueTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestEnqueueTime:J

    return-wide v0
.end method

.method public getRequestStartTime()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestStartTime:J

    return-wide v0
.end method

.method public getStreamingStartTime()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->streamingStartTime:J

    return-wide v0
.end method

.method public isNetworkAllowedToUse()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isNetworkAllowedToDownloadBook(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z

    move-result v0

    return v0
.end method

.method public onBeforeExecute()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    .line 66
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "bookDownloadStartManifest"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestStartTime:J

    .line 71
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onBeforeExecute()V

    return-void
.end method

.method public onRequestComplete()Z
    .locals 2

    .line 54
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestEndTime:J

    const/4 v0, 0x1

    return v0
.end method

.method public setContentSize(J)V
    .locals 0

    .line 156
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->contentSize:J

    return-void
.end method

.method public setDownloadDoneTime(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->downloadDoneTime:J

    return-void
.end method

.method public setHttpEndTime(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->httpEndTime:J

    return-void
.end method

.method public setManifestParsingDoneTime(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->manifestParsingDoneTime:J

    return-void
.end method

.method public setRequestEnqueueTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->requestEnqueueTime:J

    return-void
.end method

.method public setStreamingStartTime(J)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;->streamingStartTime:J

    return-void
.end method
