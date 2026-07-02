.class public Lcom/amazon/appexpan/client/metrics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static final ATTR_DM_ERROR_CODE:Ljava/lang/String; = "DMErrorCode"

.field private static final ATTR_ERROR_MESSAGE:Ljava/lang/String; = "ErrorMessage"

.field private static final ATTR_FAILURE_REASON:Ljava/lang/String; = "FailureReason"

.field private static final ATTR_HTTP_CODE:Ljava/lang/String; = "HttpCode"

.field private static final ATTR_LAST_REQUEST_STATE:Ljava/lang/String; = "LastDownloadState"

.field private static final ATTR_NAME_VERSION:Ljava/lang/String; = "Name:Version"

.field private static final ATTR_PLATFORM_VERSION:Ljava/lang/String; = "Platform:PlatformVersion"

.field private static final EVENT_FILE_DELETION_FAILED:Ljava/lang/String; = "FileDeletionFailed"

.field private static final EVENT_GET_MANIFEST_SUCCESS:Ljava/lang/String; = "AppExpanGetManifestSuccess"

.field private static final EVENT_MANIFEST_DOWNLOAD_FAIL:Ljava/lang/String; = "AppExpanGetManifestFail"

.field private static final EVENT_RESOURCE_BAD_URL:Ljava/lang/String; = "AppExpanResourceInvalidURL"

.field private static final EVENT_RESOURCE_DOWNLOAD_FAIL:Ljava/lang/String; = "AppExpanResourceDownloadFail"

.field private static final EVENT_RESOURCE_DOWNLOAD_SUCCESS:Ljava/lang/String; = "AppExpanResourceDownloadSuccess"

.field private static final EVENT_RESOURCE_INVALID:Ljava/lang/String; = "AppExpanInvalidResource"

.field private static final EVENT_RESOURCE_SET_PROMOTED:Ljava/lang/String; = "AppExpanResourceSetPromoted"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.metrics.Analytics"


# instance fields
.field private final executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazon/appexpan/client/metrics/Analytics;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/appexpan/client/metrics/Analytics;)Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/appexpan/client/metrics/Analytics;->getMetricsAdapter()Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getMetricsAdapter()Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;
    .locals 3

    .line 236
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getAppExpanMetricsAdapter()Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    sget-object v1, Lcom/amazon/appexpan/client/metrics/Analytics;->TAG:Ljava/lang/String;

    const-string v2, "Metrics adapter is null."

    invoke-static {v1, v2}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/Analytics;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v1, Lcom/amazon/appexpan/client/metrics/Analytics$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/appexpan/client/metrics/Analytics$1;-><init>(Lcom/amazon/appexpan/client/metrics/Analytics;Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public publishFileDeletionFailedEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    .locals 2

    .line 141
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "FileDeletionFailed"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 186
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v1

    .line 189
    new-instance v3, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v4, "AppExpanGetManifestFail"

    invoke-direct {v3, v4}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Platform:PlatformVersion"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FailureReason"

    .line 191
    invoke-virtual {v3, v0, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ErrorMessage"

    .line 192
    invoke-virtual {v3, p1, p2}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishGetManifestFailEvent(Ljava/lang/String;I)V
    .locals 5

    .line 171
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v1

    .line 174
    new-instance v3, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v4, "AppExpanGetManifestFail"

    invoke-direct {v3, v4}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Platform:PlatformVersion"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FailureReason"

    .line 176
    invoke-virtual {v3, v0, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpCode"

    invoke-virtual {v3, p2, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishGetManifestSuccessEvent(Ljava/lang/String;)V
    .locals 5

    .line 157
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v1

    .line 160
    new-instance v3, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v4, "AppExpanGetManifestSuccess"

    invoke-direct {v3, v4}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Platform:PlatformVersion"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LastDownloadState"

    .line 162
    invoke-virtual {v3, v0, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishInvalidResourceUrlEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    .locals 2

    .line 207
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanResourceInvalidURL"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanResourceDownloadFail"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FailureReason"

    .line 123
    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;I)V
    .locals 2

    .line 131
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanResourceDownloadFail"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FailureReason"

    .line 133
    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DMErrorCode"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishResourceDownloadSuccessEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanResourceDownloadSuccess"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishResourceInvalidEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    .locals 2

    .line 149
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanInvalidResource"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method

.method public publishResourceSetPromotedEvent(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 2

    .line 199
    new-instance v0, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    const-string v1, "AppExpanResourceSetPromoted"

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getNameVersionPair()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name:Version"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    return-void
.end method
