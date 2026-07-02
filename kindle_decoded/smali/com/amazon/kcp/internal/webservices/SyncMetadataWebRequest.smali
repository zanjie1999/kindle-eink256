.class public Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "SyncMetadataWebRequest.java"


# static fields
.field private static final DEFAULT_ITEM_COUNT:I = -0x1

.field private static final FTUE_SYNC_ITEM_COUNT:I = 0x23

.field private static final NUM_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 7

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSyncMetadataURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, v0}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;->buildSyncUrl(Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kcp/application/IKindleApplicationController;)Ljava/lang/String;

    move-result-object v4

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;->model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v4, 0x1

    .line 52
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 53
    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 54
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 55
    sget-object v3, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 57
    new-instance v3, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    .line 59
    invoke-virtual {p2, v3}, Lcom/amazon/kindle/webservices/XmlResponseHandler;->setContentHandler(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 62
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getPlatformSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "X-ADP-SW"

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 66
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-ADP-APP-SW"

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 67
    invoke-virtual {p3}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-ADP-Reason"

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private static buildSyncUrl(Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kcp/application/IKindleApplicationController;)Ljava/lang/String;
    .locals 1

    .line 79
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object p2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "?"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p0

    const-string p2, "last_syncmetadata_server_date"

    invoke-interface {p0, p2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setSyncTime(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "&last_sync_time="

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x1

    .line 95
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setItemCount(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x23

    .line 103
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setItemCount(I)V

    const-string p0, "&item_count="

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getItemCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&item_types=EBOK,EBSP"

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_SMD_START_TO_FIRST_RESPONSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBeforeExecute()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onBeforeExecute()V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;->model:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 125
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    :cond_0
    return-void
.end method
