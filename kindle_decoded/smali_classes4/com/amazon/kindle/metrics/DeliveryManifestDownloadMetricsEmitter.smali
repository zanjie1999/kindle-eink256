.class public final Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;
.super Ljava/lang/Object;
.source "DeliveryManifestDownloadMetricsEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryManifestDownloadMetricsEmitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryManifestDownloadMetricsEmitter.kt\ncom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,175:1\n181#2,2:176\n*E\n*S KotlinDebug\n*F\n+ 1 DeliveryManifestDownloadMetricsEmitter.kt\ncom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter\n*L\n111#1,2:176\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

.field private static final SOURCE_DELIVERY_MANIFEST_HANDLER:Ljava/lang/String; = "DeliveryManifest"

.field private static final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private static final metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

    .line 58
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitErrorManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 9

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDescriber"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-interface {p5}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 128
    :goto_0
    sget-object v2, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    .line 134
    sget-object v8, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 128
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->createErrorMetricPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    .line 136
    sget-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DeliveryManifest:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->ERROR_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    invoke-virtual {p3}, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->getMetricName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v3

    .line 140
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "DeliveryManifest error metric"

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public emitManifestParsingFailurePayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;)V
    .locals 9

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDescriber"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failureReason"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    .line 163
    sget-object v8, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 156
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->createManifestParsingErrorPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    .line 165
    sget-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DeliveryManifest:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->ERROR_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    invoke-virtual {p3}, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->getMetricName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    .line 171
    invoke-virtual {p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public emitSuccessManifestMetricPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Ljava/lang/String;)V
    .locals 16

    const-string v0, "manifestJob"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v1, "request.responseHandler?\u2026         return\n        }"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;

    .line 70
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getRequestEnqueueTime()J

    move-result-wide v7

    .line 71
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getRequestStartTime()J

    move-result-wide v9

    .line 72
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getStreamingStartTime()J

    move-result-wide v11

    .line 73
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getDownloadDoneTime()J

    move-result-wide v13

    .line 74
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v2

    instance-of v3, v2, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    check-cast v2, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/HasConnectionDetails;->getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-result-object v2

    move-object v15, v2

    goto :goto_0

    :cond_1
    move-object v15, v4

    :goto_0
    move-object v6, v1

    .line 69
    invoke-direct/range {v6 .. v15}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;-><init>(JJJJLcom/amazon/kindle/webservices/ConnectionDetails;)V

    .line 76
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    const-string v2, "request.bookId"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "request.correlationId"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v7

    const-string v0, "request.transportMethod"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->emitSuccessManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_2
    const-class v1, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    invoke-static {v1}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something went wrong, missing HTTP properties for a successful download of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emitSuccessManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;)V
    .locals 9

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpResponseProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpLatencies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    .line 94
    sget-object v8, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 87
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->createSuccessMetricPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p2

    .line 97
    sget-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "DeliveryManifest:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->SUCCESS_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    invoke-virtual {p5}, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->getMetricName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 100
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getCounters$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v3

    .line 101
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v4

    .line 102
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "DeliveryManifest success metric"

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 106
    sget-object p2, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p2

    const-string p3, "krlForDownloadFacade.contentOpenMetricsManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    .line 108
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getResponseReceivedByHttpClientMilestone()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "bookDownloadManifestConnectionEstablished"

    invoke-static {p6, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, p3, p6

    .line 109
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestCompletedByHttpClientMilestone()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "bookDownloadManifestReceived"

    invoke-static {p5, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    .line 107
    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    .line 176
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 112
    sget-object p4, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object p4

    array-length p5, p4

    invoke-static {p4, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-object v0, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;J[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
