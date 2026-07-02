.class public Lcom/amazon/kindle/metrics/DownloadMetricsManager;
.super Ljava/lang/Object;
.source "DownloadMetricsManager.java"


# static fields
.field private static final ASIN:Ljava/lang/String; = "ASIN"

.field private static final ASSET_REQUEST_DOWNLOAD_MANAGER:Ljava/lang/String; = "AssetRequestDownloadManager"

.field private static final BOOK_TYPE:Ljava/lang/String; = "BookType"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "ContentType"

.field private static final DOWNLOAD_REQUEST_GROUP:Ljava/lang/String; = "DOWNLOAD_REQUEST_GROUP"

.field private static final DOWNLOAD_TRIGGER:Ljava/lang/String; = "DownloadTrigger"

.field private static final FAIL_REASON:Ljava/lang/String; = "FailureReason"

.field private static final IS_EXTERNAL_SD:Ljava/lang/String; = "IsExternalSD"

.field private static final IS_LUNA:Ljava/lang/String; = "IsLuna"

.field private static final IS_SHARED:Ljava/lang/String; = "IsShared"

.field private static final METRICS_DOWNLOAD_FINISH:Ljava/lang/String; = "DOWNLOAD_FINISH"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "ResponseCode"

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "ServerDomain"

.field private static final SOURCE_DOWNLOAD_ANALYSIS:Ljava/lang/String; = "DOWNLOAD_ANALYSIS"

.field private static final SOURCE_DOWNLOAD_BUSINESS:Ljava/lang/String; = "DOWNLOAD_BUSINESS"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getAdjustErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    if-nez p0, :cond_1

    const-string p0, "errorState is not set when download fails, this indicates a bug!"

    .line 368
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    sget-object p0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 374
    invoke-static {}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadMetricsManagerInternalError()V

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getDownloadManagerDescription(Z)Ljava/lang/String;
    .locals 0

    const-string p0, "AssetRequestDownloadManager"

    return-object p0
.end method

.method private static isExternalSD(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static reportAssetsDownloadEndedMetrics(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZZZLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p11

    .line 303
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    const-string v6, "DOWNLOAD_BUSINESS"

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v5

    xor-int/lit8 v6, p0, 0x1

    const-string v7, "DOWNLOAD_FINISH"

    .line 304
    invoke-virtual {v5, v7, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DOWNLOAD_FINISH:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    xor-int/lit8 v8, p0, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 309
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    const-string v8, "DOWNLOAD_ANALYSIS"

    invoke-virtual {v6, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v6

    xor-int/lit8 v8, p0, 0x1

    .line 310
    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 312
    invoke-virtual/range {p12 .. p12}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->getMetricAttribute()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 313
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 315
    invoke-static/range {p7 .. p7}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->getDownloadManagerDescription(Z)Ljava/lang/String;

    move-result-object v7

    .line 316
    invoke-virtual {v6, v7}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-nez p0, :cond_2

    const/16 v9, 0x3a

    .line 319
    invoke-static {v9}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v9

    .line 320
    invoke-static/range {p5 .. p5}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->getAdjustErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    .line 321
    invoke-virtual {v5, v10}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 322
    invoke-virtual {v5, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 323
    invoke-static/range {p12 .. p12}, Lcom/amazon/kindle/metrics/DownloadFailureMetricsUtilKt;->getDownloadFailureTriggerAppending(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Ljava/lang/String;

    move-result-object v11

    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 325
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    .line 326
    invoke-virtual {v9, v10, v4, v12}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    new-array v4, v11, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v9, v7, v10, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 328
    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v3, v4, :cond_1

    .line 333
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 334
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->getOperation()Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/DownloadRequestOperation;->getOperationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 335
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->getHttpStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v11

    aput-object v1, v3, v8

    .line 337
    invoke-virtual {v9, v10, v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v6, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v4, "FailureReason"

    .line 339
    invoke-virtual {v6, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 343
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    const-string v3, "ASIN"

    move-object v4, p1

    .line 345
    invoke-virtual {v6, v3, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "BookType"

    .line 346
    invoke-virtual {v6, v3, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "ContentType"

    .line 347
    invoke-virtual {v6, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "ResponseCode"

    .line 348
    invoke-virtual {v6, v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p7, :cond_3

    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    const-string v3, "IsLuna"

    .line 349
    invoke-virtual {v6, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "ServerDomain"

    move-object/from16 v3, p10

    .line 350
    invoke-virtual {v6, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz p8, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    const-string v3, "IsShared"

    .line 351
    invoke-virtual {v6, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz p9, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    const-string v1, "IsExternalSD"

    .line 352
    invoke-virtual {v6, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 353
    invoke-virtual/range {p12 .. p12}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->getMetricAttribute()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTrigger"

    invoke-virtual {v6, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 356
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method

.method public static reportDownloadEndedMetrics(Lcom/amazon/kindle/model/content/IBookID;JJLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 25

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v15, p6

    move-object/from16 v14, p7

    .line 91
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v11

    .line 96
    invoke-interface {v11}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getVersionString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    if-eqz v15, :cond_0

    .line 98
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 100
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v12

    const/16 v16, 0x0

    if-eqz v12, :cond_1

    .line 103
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result v4

    move/from16 v17, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    const/16 v17, 0x0

    :goto_1
    move-object v0, v11

    move-object v6, v1

    move-object v1, v12

    move-object/from16 v23, v2

    move-object v7, v3

    move-wide/from16 v2, p1

    move-object/from16 v24, v4

    move-object/from16 v4, p5

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadEndedMetricsLocalBroadcast(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v12, v11}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->isExternalSD(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Z

    move-result v19

    .line 115
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DOWNLOAD_REQUEST_GROUP"

    const-string v3, "_"

    if-eqz v0, :cond_5

    .line 116
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v16

    const-string v4, "Bookid %s . Upload downloading failure to PMET"

    invoke-static {v4, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookDownloadFailed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_2

    .line 123
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedBookDownloadFailed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v19, :cond_3

    .line 129
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookDownloadFailed_external_sd_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v12, :cond_4

    .line 135
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->INSTANCE:Lcom/amazon/kindle/metrics/FalkorMetricUtils;

    invoke-static/range {p6 .. p6}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->getAdjustErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportAssetsDownloadFailedMetrics(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :cond_4
    const/4 v0, 0x0

    move-object/from16 v1, v23

    move-object v2, v7

    move-object v3, v6

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, v17

    move/from16 v8, p9

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object v11, v13

    move-object/from16 v12, p11

    .line 139
    invoke-static/range {v0 .. v12}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportAssetsDownloadEndedMetrics(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZZZLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    goto/16 :goto_3

    .line 152
    :cond_5
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v16

    const-string v4, "Bookid :%s. Upload downloading success to PMET"

    invoke-static {v4, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 155
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookDownloadSucceed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_6

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedBookDownloadSucceed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v19, :cond_7

    .line 168
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookDownloadSucceed_external_sd_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v10, 0x1

    move-object/from16 v11, v23

    move-object v12, v7

    move-object v0, v13

    move-object v13, v6

    move-object/from16 v14, p7

    move-object/from16 v15, p6

    move-object/from16 v16, p8

    move/from16 v18, p9

    move-object/from16 v20, p10

    move-object/from16 v21, v0

    move-object/from16 v22, p11

    .line 173
    invoke-static/range {v10 .. v22}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportAssetsDownloadEndedMetrics(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZZZLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    const-wide/16 v0, 0x0

    cmp-long v3, v8, v0

    if-lez v3, :cond_8

    move-wide/from16 v3, p1

    cmp-long v5, v3, v0

    if-lez v5, :cond_9

    .line 187
    div-long v0, v3, v8

    goto :goto_2

    :cond_8
    move-wide/from16 v3, p1

    .line 189
    :cond_9
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    .line 190
    invoke-virtual {v6, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    const-string v6, "ASIN"

    move-object/from16 v10, v23

    .line 191
    invoke-virtual {v2, v6, v10}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    long-to-int v4, v3

    const-string v3, "ThroughputMetrics_TotalDownloadSize"

    .line 192
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    long-to-int v1, v0

    const-string v0, "ThroughputMetrics_AverageDownloadThroughput"

    .line 193
    invoke-virtual {v2, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    long-to-int v1, v8

    const-string v2, "ThroughputMetrics_TotalDownloadTime"

    .line 194
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 189
    invoke-virtual {v5, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "asin"

    .line 197
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "guid"

    move-object/from16 v3, v24

    .line 198
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "filetype"

    .line 199
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Library"

    const-string v2, "Downloaded"

    .line 200
    invoke-static {v1, v2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public static reportDownloadEndedMetricsLocalBroadcast(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-interface/range {p0 .. p5}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->pushDownloadEndedMetrics(Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v8, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 253
    invoke-interface {p0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 254
    sget-object p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    const-string p1, "Launch a sync since the parent ASIN, the subscription type or the publication date isn\'t correct at the end of the download"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static reportDownloadMetricsManagerInternalError()V
    .locals 8

    .line 381
    sget-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_FAIL_STATUS_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 382
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : reporting request fail error status not properly set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, "APP_INTERNAL_ERROR_BREAKDOWN"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V
    .locals 6

    .line 268
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters()Ljava/util/HashMap;

    move-result-object v2

    .line 270
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers()Ljava/util/HashMap;

    move-result-object v3

    .line 271
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes()Ljava/util/HashMap;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : reporting download metrics payload"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 268
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
