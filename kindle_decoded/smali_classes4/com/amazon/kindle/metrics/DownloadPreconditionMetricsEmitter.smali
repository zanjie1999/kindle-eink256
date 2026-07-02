.class public final Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;
.super Ljava/lang/Object;
.source "DownloadPreconditionMetricsEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;

.field private static final PRECONDITION_BOOK_ID:Ljava/lang/String; = "bookId"

.field private static final PRECONDITION_CONTENT_LENGTH:Ljava/lang/String; = "contentLength"

.field private static final PRECONDITION_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final PRECONDITION_DOWNLOAD_TRIGGER:Ljava/lang/String; = "downloadTrigger"

.field private static final PRECONDITION_USE_SDCARD:Ljava/lang/String; = "useSDCard"

.field private static final SOURCE_DOWNLOAD_PRECONDITION:Ljava/lang/String; = "DownloadPrecondition"

.field private static final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private static final metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;

    .line 25
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 26
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setCommonPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;
    .locals 3

    .line 90
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;-><init>()V

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bookID.serializedForm"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bookId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 92
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;->getMetricAttribute()Ljava/lang/String;

    move-result-object p2

    const-string v1, "downloadTrigger"

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bookID.type.getName()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "contentType"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    return-object v0
.end method


# virtual methods
.method public emitFileSystemFullMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JZ)V
    .locals 7

    const-string v0, "bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->setCommonPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    .line 57
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "contentLength"

    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string p2, "useSDCard"

    .line 58
    invoke-virtual {p1, p2, p5}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 59
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 61
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 62
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    const-string v1, "DownloadPrecondition"

    const-string v6, "DownloadPrecondition metric"

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public emitFileSystemWriteErrorMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V
    .locals 7

    const-string v0, "bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->setCommonPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    .line 75
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string p2, "useSDCard"

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 78
    sget-object v0, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 79
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v3

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    const-string v1, "DownloadPrecondition"

    const-string v6, "DownloadPrecondition metric"

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public emitNoConnectionMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 8

    const-string v0, "bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->setCommonPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    .line 40
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 42
    sget-object v1, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 43
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v6

    const-string v2, "DownloadPrecondition"

    const-string v7, "DownloadPrecondition metric"

    .line 42
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
