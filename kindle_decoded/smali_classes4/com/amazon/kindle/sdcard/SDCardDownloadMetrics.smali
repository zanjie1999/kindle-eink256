.class public Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;
.super Ljava/lang/Object;
.source "SDCardDownloadMetrics.java"


# static fields
.field static final INSTANCE:Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field private final pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->INSTANCE:Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 37
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->appContext:Landroid/content/Context;

    return-void
.end method

.method private isBookDownloadingToSDCard(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static startListening()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->INSTANCE:Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDownloadGroupStatusChanged(Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->shouldUseExternalSDCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SDCardSaveFailureReason"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->isBookDownloadingToSDCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    .line 66
    sget-object v1, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 76
    sget-object p1, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalis state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while downloading status update event"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SDCardSaveFailureReason"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
