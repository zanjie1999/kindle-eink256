.class public final Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;
.super Ljava/lang/Object;
.source "MDSManifestProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;
.implements Lcom/amazon/kindle/download/manifest/providers/PropagateExceptionsOnFailure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;,
        Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
        "Lcom/amazon/kindle/download/manifest/MDSManifest;",
        ">;",
        "Lcom/amazon/kindle/download/manifest/providers/PropagateExceptionsOnFailure;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMDSManifestProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MDSManifestProvider.kt\ncom/amazon/kindle/download/manifest/providers/MDSManifestProvider\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n308#2,11:134\n1#3:145\n*E\n*S KotlinDebug\n*F\n+ 1 MDSManifestProvider.kt\ncom/amazon/kindle/download/manifest/providers/MDSManifestProvider\n*L\n46#1,11:134\n*E\n"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

.field private final manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

.field private final metricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    const-class v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;)V
    .locals 1

    const-string v0, "manifestDownloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsEmitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->metricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    const/16 p1, 0x3e8

    .line 37
    iput p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->priority:I

    return-void
.end method

.method public static final synthetic access$getManifestDownloader$p(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleManifestPayload(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->handleManifestPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;

    move-result-object p0

    return-object p0
.end method

.method private final emitSuccessMetric(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/MDSManifest;)V
    .locals 17

    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    .line 68
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    const-string v2, "request.responseHandler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v6

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v1

    if-eqz v6, :cond_5

    .line 71
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getStartTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getResponseReceivedTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getStreamCompleteTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getCreationTime()J

    move-result-wide v8

    .line 76
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getStartTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 77
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getResponseReceivedTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 78
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getStreamCompleteTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    instance-of v3, v1, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v1, v4

    :cond_0
    check-cast v1, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/HasConnectionDetails;->getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    :goto_0
    move-object v7, v2

    .line 74
    invoke-direct/range {v7 .. v16}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;-><init>(JJJJLcom/amazon/kindle/webservices/ConnectionDetails;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    .line 81
    :try_start_1
    iget-object v3, v1, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->metricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const-string v5, "request.bookId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "request.correlationId"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v8

    const-string v0, "request.transportMethod"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getRevision()Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    .line 81
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitSuccessManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p0

    const-string v0, "Completed job missing streaming complete time"

    .line 73
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v1, p0

    const-string v0, "Completed job missing response received time"

    .line 72
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v1, p0

    const-string v0, "Completed job missing start time"

    .line 71
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v1, p0

    const-string v0, "Completed job missing HTTPResponseProperties"

    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 84
    :goto_1
    sget-object v2, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing necessary data to emit a successful metrics payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final handleManifestPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;
    .locals 1

    .line 59
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;->getPayload()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->parseManifest(Ljava/lang/String;Lcom/amazon/kindle/webservices/IManifestWebRequest;)Lcom/amazon/kindle/download/manifest/MDSManifest;

    move-result-object p2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->emitSuccessMetric(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/MDSManifest;)V

    return-object p2
.end method

.method private final parseManifest(Ljava/lang/String;Lcom/amazon/kindle/webservices/IManifestWebRequest;)Lcom/amazon/kindle/download/manifest/MDSManifest;
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/manifest/ManifestSerializer;->serialize(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ParsingResult;

    move-result-object v0

    .line 91
    instance-of v1, v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest;

    return-object p1

    .line 94
    :cond_0
    instance-of v1, v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    if-eqz v1, :cond_1

    .line 95
    new-instance v1, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manifest could not be parsed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p2

    const-string v2, "manifestRequest.responseHandler"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object p2

    .line 98
    check-cast v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;->getException()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 95
    invoke-direct {v1, p1, p2, v0}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method final synthetic downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 135
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 141
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 47
    new-instance v1, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;

    new-instance v2, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$2$delegate$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$2$delegate$1;-><init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;)V

    .line 48
    new-instance v2, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 53
    invoke-static {p0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->access$getManifestDownloader$p(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/amazon/kindle/download/ManifestProviderException$InternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManifestDownloader rejected download for bookID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2, v3}, Lcom/amazon/kindle/download/ManifestProviderException$InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 143
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 134
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1
.end method

.method public fetch(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;

    iget v1, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;-><init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iput-object p2, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$fetch$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 39
    :cond_3
    :goto_1
    check-cast p3, Lcom/amazon/kindle/download/manifest/MDSManifest;

    .line 42
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->priority:I

    return v0
.end method
