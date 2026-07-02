.class public final Lcom/amazon/kindle/webservices/okhttp/OkHttpMetricsUtilsKt;
.super Ljava/lang/Object;
.source "OkHttpMetricsUtils.kt"


# static fields
.field private static final OKHTTP_DOMAIN_KEY:Ljava/lang/String; = "domain"

.field private static final OKHTTP_ERRORCONTEXT_KEY:Ljava/lang/String; = "errorContext"

.field private static final OKHTTP_ERRORSTATE_KEY:Ljava/lang/String; = "errorState"

.field private static final OKHTTP_FAILURE_KEY:Ljava/lang/String; = "requestFailure"

.field private static final OKHTTP_MAP_ERRORCODE_PREFIX:Ljava/lang/String; = "MapErrorCode."

.field private static final OKHTTP_MAP_ERRORMESSAGE_KEY:Ljava/lang/String; = "MapErrorMessage"

.field private static final OKHTTP_METRICS_SOURCE:Ljava/lang/String; = "OkHttpWebRequestExecutor"

.field private static final OKHTTP_PROTOCOL_KEY:Ljava/lang/String; = "httpProtocol"

.field private static final OKHTTP_REQUESTID_KEY:Ljava/lang/String; = "requestId"

.field private static final OKHTTP_RETRYCOUNT_KEY:Ljava/lang/String; = "retryCount"

.field private static final VALUE_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public static final createNewMetricsData(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 1

    const-string v0, "metricsManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OkHttpWebRequestExecutor"

    .line 33
    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p0

    const-string v0, "metricsManager.newMetrics(OKHTTP_METRICS_SOURCE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final populateAdpSigningErrorMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException;)Ljava/lang/String;
    .locals 3

    const-string v0, "metricsData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 38
    instance-of v0, v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error_code_key"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error_message_key"

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapErrorCode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v1, "MapErrorMessage"

    .line 45
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered MAP ADP error code "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected ADP error cause "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final populateRequestMetrics(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 3

    const-string/jumbo v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequest;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "domain"

    invoke-virtual {p2, v2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 55
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string/jumbo v2, "requestId"

    invoke-virtual {p2, v2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    const-string p1, "httpProtocol"

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 57
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetryAttempts()I

    move-result p1

    const-string/jumbo v0, "retryCount"

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 59
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 60
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "errorContext"

    .line 61
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 63
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p0

    const-string/jumbo p1, "requestFailure"

    if-eqz p0, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "errorState"

    invoke-virtual {p2, v0, p0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const/4 p0, 0x1

    .line 65
    invoke-virtual {p2, p1, p0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 66
    invoke-virtual {p2, p1, p0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    :cond_5
    :goto_2
    return-void
.end method
