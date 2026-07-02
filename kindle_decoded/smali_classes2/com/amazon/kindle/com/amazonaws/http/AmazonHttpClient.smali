.class public Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static final HEADER_SDK_RETRY_INFO:Ljava/lang/String; = "aws-sdk-retry"

.field private static final HEADER_SDK_TRANSACTION_ID:Ljava/lang/String; = "aws-sdk-invocation-id"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_STATUS_MULTIPLE_CHOICES:I = 0x12c

.field private static final HTTP_STATUS_OK:I = 0xc8

.field private static final HTTP_STATUS_REQ_TOO_LONG:I = 0x19d

.field private static final HTTP_STATUS_SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final HTTP_STATUS_TEMP_REDIRECT:I = 0x133

.field private static final REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final TIME_MILLISEC:I = 0x3e8

.field static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field final config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

.field final httpClient:Lcom/amazon/kindle/com/amazonaws/http/HttpClient;

.field private final requestFactory:Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

.field private final requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle.com.amazonaws.request"

    .line 79
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 85
    const-class v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 143
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazon/kindle/com/amazonaws/http/HttpClient;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

    .line 162
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 163
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazon/kindle/com/amazonaws/http/HttpClient;

    .line 164
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "("

    .line 783
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " + 15"

    .line 785
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, " - 15"

    .line 788
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 790
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 483
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p1
.end method

.method private isRequestSuccessful(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Z
    .locals 1

    .line 617
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isTemporaryRedirect(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Z
    .locals 2

    .line 610
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v1, "Location"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pauseBeforeNextRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;ILcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;)J
    .locals 2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 754
    invoke-virtual {p4}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->getBackoffStrategy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;->delayBeforeNextRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)J

    move-result-wide p1

    .line 757
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {p4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 758
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retriable error detected, will retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, attempt number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 763
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 766
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 767
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;ILcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;)Z
    .locals 2

    add-int/lit8 p4, p4, -0x1

    .line 579
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    if-ltz v0, :cond_0

    .line 585
    invoke-virtual {p5}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->isMaxErrorRetryInClientConfigHonored()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    :cond_0
    invoke-virtual {p5}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->getMaxErrorRetry()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-lt p4, v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_4

    .line 595
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p2

    if-nez p2, :cond_4

    .line 596
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 597
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string p2, "Content not repeatable"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 604
    :cond_4
    invoke-virtual {p5}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->getRetryCondition()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object p2

    invoke-interface {p2, p1, p3, p4}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;->shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method afterError(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Ljava/util/List;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/AmazonClientException;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    .line 226
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->afterError(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method afterResponse(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/util/List;Lcom/amazon/kindle/com/amazonaws/Response;Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "TT;>;",
            "Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    .line 235
    invoke-virtual {p4, p1, p3}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->afterResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 208
    invoke-virtual {p0, p1, p4}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestHandler2s(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-virtual {p4}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->executeHelper(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 214
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object p2

    .line 215
    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->afterResponse(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/util/List;Lcom/amazon/kindle/com/amazonaws/Response;Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    .line 218
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->afterError(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Ljava/util/List;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;)V

    .line 219
    throw p2

    .line 205
    :cond_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string p2, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method executeHelper(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 281
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v10

    .line 286
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->setUserAgent(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 292
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aws-sdk-invocation-id"

    invoke-interface {v8, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 301
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 302
    new-instance v12, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 305
    invoke-virtual {v13}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 306
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->mark(I)V

    .line 309
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const/4 v15, 0x1

    move-object/from16 v19, v6

    add-int/lit8 v6, v0, 0x1

    .line 316
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    move/from16 v20, v1

    move-wide/from16 v21, v2

    int-to-long v1, v6

    invoke-virtual {v10, v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->setCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;J)V

    if-le v6, v15, :cond_1

    .line 318
    invoke-interface {v8, v11}, Lcom/amazon/kindle/com/amazonaws/Request;->setParameters(Ljava/util/Map;)V

    .line 319
    invoke-interface {v8, v12}, Lcom/amazon/kindle/com/amazonaws/Request;->setHeaders(Ljava/util/Map;)V

    .line 320
    invoke-interface {v8, v13}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_1
    if-eqz v16, :cond_2

    .line 322
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_2

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 326
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    :cond_2
    const-string v3, "Cannot close the response content."

    if-le v6, v15, :cond_3

    .line 331
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_20
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    iget-object v1, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 336
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    move-result-object v1

    .line 333
    invoke-direct {v7, v0, v4, v6, v1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->pauseBeforeNextRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;ILcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_20
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide/from16 v21, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 338
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 339
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_15

    :catch_1
    move-exception v0

    :goto_1
    move-object v9, v3

    move-object v15, v5

    :goto_2
    move/from16 v25, v6

    :goto_3
    move-object/from16 v23, v11

    goto/16 :goto_1d

    :cond_3
    move-wide/from16 v1, v21

    :cond_4
    :goto_4
    :try_start_4
    const-string v0, "aws-sdk-retry"

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_20
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    if-nez v5, :cond_5

    .line 350
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_20
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    move-object v15, v5

    if-eqz v15, :cond_6

    if-eqz v14, :cond_6

    .line 353
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_20
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 355
    :try_start_7
    invoke-interface {v15, v8, v14}, Lcom/amazon/kindle/com/amazonaws/auth/Signer;->sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 357
    :try_start_8
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 358
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_20
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 361
    :cond_6
    :goto_5
    :try_start_9
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_21
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_20
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    if-eqz v0, :cond_7

    .line 362
    :try_start_a
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_20
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 365
    :cond_7
    :try_start_b
    iget-object v0, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;

    iget-object v4, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0, v8, v4, v9}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequestFactory;->createHttpRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;

    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 369
    :try_start_c
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_21
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_20
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 371
    :try_start_d
    iget-object v0, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazon/kindle/com/amazonaws/http/HttpClient;

    invoke-interface {v0, v5}, Lcom/amazon/kindle/com/amazonaws/http/HttpClient;->execute(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 373
    :try_start_e
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 376
    invoke-direct {v7, v4}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->isRequestSuccessful(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_19
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_18
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_9

    .line 377
    :try_start_f
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v17
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-wide/from16 v21, v1

    :try_start_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 382
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v2, p2

    .line 383
    :try_start_11
    invoke-virtual {v7, v8, v2, v4, v9}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->handleResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/Response;

    invoke-direct {v2, v0, v4}, Lcom/amazon/kindle/com/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-nez v1, :cond_8

    if-eqz v4, :cond_8

    .line 467
    :try_start_12
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 468
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 471
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return-object v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_20

    :catch_3
    move-exception v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_19

    :catch_4
    move-exception v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_1c

    :catch_5
    move-exception v0

    move/from16 v20, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_18

    :catch_7
    move-exception v0

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move-wide/from16 v21, v1

    :goto_7
    move-object v9, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    goto/16 :goto_2

    :cond_9
    move-wide/from16 v21, v1

    .line 387
    :try_start_13
    invoke-static {v4}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->isTemporaryRedirect(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Z

    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eqz v0, :cond_a

    .line 394
    :try_start_14
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v23, v3

    :try_start_15
    const-string v3, "Redirecting to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 397
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v16

    const/4 v1, 0x0

    .line 398
    invoke-interface {v8, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 399
    invoke-interface {v8, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 400
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 401
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object/from16 v24, v5

    move/from16 v25, v6

    move/from16 v1, v20

    move-object/from16 v9, v23

    const/4 v2, 0x0

    move-object/from16 v23, v11

    move-object v11, v4

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    move/from16 v1, v20

    move-object/from16 v9, v23

    goto/16 :goto_20

    :catch_9
    move-exception v0

    move-object v6, v4

    move/from16 v1, v20

    move-object/from16 v9, v23

    goto/16 :goto_19

    :catch_a
    move-exception v0

    move-object v6, v4

    move/from16 v1, v20

    move-object/from16 v9, v23

    goto/16 :goto_1c

    :catch_b
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move/from16 v25, v6

    move-object/from16 v9, v23

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_7

    :cond_a
    move-object/from16 v23, v3

    .line 404
    :try_start_16
    invoke-interface/range {p3 .. p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v17
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_14
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move-object/from16 v3, p3

    .line 405
    :try_start_17
    invoke-virtual {v7, v8, v3, v4}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->handleErrorResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 407
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 408
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 409
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 412
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v19

    iget-object v1, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 415
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    move-result-object v20
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    move-object/from16 v1, p0

    move-object/from16 v9, v23

    move-object/from16 v3, v19

    move-object/from16 v23, v11

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v24, v5

    move v5, v6

    move/from16 v25, v6

    move-object/from16 v6, v20

    .line 411
    :try_start_18
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;ILcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 426
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isClockSkewError(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 427
    invoke-virtual {v7, v11, v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->parseClockSkewOffset(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)I

    move-result v1

    .line 428
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->setGlobalTimeOffset(I)V

    .line 430
    :cond_b
    invoke-virtual {v7, v8, v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-object v2, v0

    move/from16 v1, v17

    :goto_8
    if-nez v1, :cond_c

    if-eqz v11, :cond_c

    .line 467
    :try_start_19
    invoke-virtual {v11}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 468
    invoke-virtual {v11}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    .line 471
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v3, v9, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    move-object v4, v2

    move-object v6, v11

    move-object v5, v15

    move-wide/from16 v2, v21

    move-object/from16 v17, v24

    const/4 v11, 0x0

    goto/16 :goto_1f

    .line 416
    :cond_d
    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_a

    :catch_e
    move-exception v0

    goto :goto_b

    :catch_f
    move-exception v0

    goto :goto_c

    :catch_10
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    :goto_a
    move-object v2, v0

    move-object v6, v11

    move/from16 v1, v17

    goto/16 :goto_20

    :catch_11
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    :goto_b
    move-object v6, v11

    move/from16 v1, v17

    goto/16 :goto_19

    :catch_12
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    :goto_c
    move-object v6, v11

    move/from16 v1, v17

    goto/16 :goto_1c

    :catch_13
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v9, v23

    move-object/from16 v23, v11

    move-object v11, v4

    :goto_d
    move-object/from16 v19, v11

    move/from16 v20, v17

    goto/16 :goto_13

    :catchall_8
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    goto :goto_e

    :catch_14
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    goto :goto_f

    :catch_15
    move-exception v0

    move-object v11, v4

    move-object/from16 v9, v23

    goto :goto_10

    :catch_16
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v9, v23

    goto :goto_12

    :catch_17
    move-exception v0

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object v9, v3

    move-object v11, v4

    :goto_e
    move-object v2, v0

    move-object v6, v11

    goto/16 :goto_16

    :catch_18
    move-exception v0

    move-object v9, v3

    move-object v11, v4

    :goto_f
    move-object v6, v11

    goto/16 :goto_18

    :catch_19
    move-exception v0

    move-object v9, v3

    move-object v11, v4

    :goto_10
    move-object v6, v11

    goto/16 :goto_1b

    :catch_1a
    move-exception v0

    move-wide/from16 v21, v1

    :goto_11
    move-object v9, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    :goto_12
    move-object/from16 v23, v11

    move-object v11, v4

    move-object/from16 v19, v11

    goto :goto_13

    :catchall_a
    move-exception v0

    move-wide/from16 v21, v1

    move-object v9, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v23, v11

    .line 373
    :try_start_1b
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 374
    throw v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_1c
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :catch_1b
    move-exception v0

    goto :goto_17

    :catch_1c
    move-exception v0

    goto :goto_1a

    :catch_1d
    move-exception v0

    goto :goto_13

    :catch_1e
    move-exception v0

    move-wide/from16 v21, v1

    move-object v9, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v23, v11

    :goto_13
    move-object/from16 v17, v24

    goto :goto_1d

    :catch_1f
    move-exception v0

    move-wide/from16 v21, v1

    move-object v9, v3

    goto/16 :goto_2

    :catchall_b
    move-exception v0

    move-object v9, v3

    :goto_14
    move-object v2, v0

    :goto_15
    move-object/from16 v6, v19

    :goto_16
    move/from16 v1, v20

    goto/16 :goto_20

    :catch_20
    move-exception v0

    move-object v9, v3

    :goto_17
    move-object/from16 v6, v19

    :goto_18
    move/from16 v1, v20

    .line 456
    :goto_19
    :try_start_1c
    invoke-direct {v7, v0, v10}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_21
    move-exception v0

    move-object v9, v3

    :goto_1a
    move-object/from16 v6, v19

    :goto_1b
    move/from16 v1, v20

    .line 454
    :goto_1c
    invoke-direct {v7, v0, v10}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    :catchall_c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_20

    :catch_22
    move-exception v0

    move-wide/from16 v21, v1

    move-object v9, v3

    move/from16 v25, v6

    move-object/from16 v23, v11

    move-object v15, v5

    .line 433
    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    const-string v2, "Unable to execute HTTP request: "

    if-eqz v1, :cond_e

    .line 434
    :try_start_1e
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    :cond_e
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 437
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 440
    new-instance v6, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    .line 443
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v3

    iget-object v1, v7, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 446
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    move-result-object v18

    move-object/from16 v1, p0

    move-object v4, v6

    move/from16 v5, v25

    move-object/from16 v24, v6

    move-object/from16 v6, v18

    .line 442
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;ILcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 452
    invoke-virtual {v7, v8, v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    if-nez v20, :cond_f

    if-eqz v19, :cond_f

    .line 467
    :try_start_1f
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 468
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_23

    goto :goto_1e

    :catch_23
    move-exception v0

    .line 471
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v9, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_f
    :goto_1e
    move-object v5, v15

    move-object/from16 v6, v19

    move/from16 v1, v20

    move-wide/from16 v2, v21

    move-object/from16 v4, v24

    :goto_1f
    move-object/from16 v9, p4

    move-object/from16 v11, v23

    move/from16 v0, v25

    goto/16 :goto_0

    .line 447
    :cond_10
    :try_start_20
    throw v24
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_d
    move-exception v0

    goto/16 :goto_14

    :goto_20
    if-nez v1, :cond_11

    if-eqz v6, :cond_11

    .line 467
    :try_start_21
    invoke-virtual {v6}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 468
    invoke-virtual {v6}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_24

    goto :goto_21

    :catch_24
    move-exception v0

    .line 471
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v9, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 474
    :cond_11
    :goto_21
    throw v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 824
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public getResponseMetadataForRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method handleErrorResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 699
    :try_start_0
    invoke-interface {p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    .line 700
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 705
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    const-string p3, "Request entity too large"

    invoke-direct {p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 708
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    .line 709
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    .line 711
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Service Unavailable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    const-string p3, "Service unavailable"

    invoke-direct {p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 715
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    .line 716
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 728
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 729
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p2

    .line 717
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 718
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unmarshall error response ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response Headers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method handleResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, ", Response Text: "

    .line 644
    :try_start_0
    invoke-virtual {p4}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object p4

    .line 646
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    invoke-interface {p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    if-eqz p2, :cond_1

    .line 660
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received successful response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", AWS Request ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 664
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 654
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to unmarshall response metadata. Response Code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 650
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 651
    throw p2
    :try_end_2
    .catch Lcom/amazon/kindle/com/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 672
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to unmarshall response ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). Response Code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 670
    throw p1

    :catch_2
    move-exception p1

    .line 668
    throw p1
.end method

.method parseClockSkewOffset(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)I
    .locals 3

    .line 795
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 798
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 802
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 804
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 805
    :try_start_3
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->parseCompressedISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 817
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 818
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 811
    :goto_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse clock skew offset from response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method requestHandler2s(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getRequestHandler2s()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    .line 251
    instance-of v3, v2, Lcom/amazon/kindle/com/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_1

    .line 252
    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/handlers/CredentialsRequestHandler;

    .line 253
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/com/amazonaws/handlers/CredentialsRequestHandler;->setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 255
    :cond_1
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method resetRequestAfterError(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 511
    :catch_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 503
    :cond_1
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method setUserAgent(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 523
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazon/kindle/com/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;->getClientMarker(Lcom/amazon/kindle/com/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "User-Agent"

    .line 537
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazon/kindle/com/amazonaws/http/HttpClient;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpClient;->shutdown()V

    return-void
.end method
