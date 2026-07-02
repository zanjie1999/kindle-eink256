.class public Lcom/amazon/kindle/services/download/SidecarDownloadService;
.super Ljava/lang/Object;
.source "SidecarDownloadService.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/ISidecarDownloadService;


# static fields
.field private static final METRICS_CLASS:Ljava/lang/String;

.field protected static final SIDECAR_DOWNLOAD_PREFACE:Ljava/lang/String; = "SidecarDownload"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/amazon/kindle/services/download/SidecarDownloadService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/services/download/SidecarDownloadService;->TAG:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/download/SidecarDownloadService;->METRICS_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/services/download/SidecarDownloadService;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->notifyFinished(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/services/download/SidecarDownloadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/services/download/SidecarDownloadService;->METRICS_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method private notifyFinished(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->onAfterSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_0
    return-void
.end method

.method private notifyStarted(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->onBeforeSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z
    .locals 9

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting sidecar download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and guid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->notifyStarted(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/amazon/kindle/services/download/SidecarDownloadService;->METRICS_CLASS:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "SidecarDownload"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Skipping sidecar download "

    if-nez v1, :cond_0

    .line 38
    sget-object p3, Lcom/amazon/kindle/services/download/SidecarDownloadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " because the metadata no longer exists"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->notifyFinished(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 41
    sget-object p1, Lcom/amazon/kindle/services/download/SidecarDownloadService;->METRICS_CLASS:Ljava/lang/String;

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p3, "SidecarDownload:Skipped:NoMetadata"

    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return v2

    :cond_0
    if-eqz p3, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    sget-object v4, Lcom/amazon/kindle/services/download/SidecarDownloadService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " because the GUID has changed from "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/SidecarDownloadService;->notifyFinished(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 49
    sget-object p1, Lcom/amazon/kindle/services/download/SidecarDownloadService;->METRICS_CLASS:Ljava/lang/String;

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p3, "SidecarDownload:Skipped:GUIDChanged"

    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return v2

    .line 53
    :cond_1
    new-instance v0, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/services/download/SidecarDownloadService$1;-><init>(Lcom/amazon/kindle/services/download/SidecarDownloadService;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    move-result p1

    return p1
.end method
