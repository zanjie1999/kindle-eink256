.class public abstract Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "AmazonWebServiceClient.java"


# static fields
.field private static final AMAZON:Ljava/lang/String; = "Amazon"

.field private static final AWS:Ljava/lang/String; = "AWS"

.field private static final LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field public static final LOGGING_AWS_REQUEST_METRIC:Z = true


# instance fields
.field protected client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

.field protected clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

.field protected volatile endpoint:Ljava/net/URI;

.field protected volatile endpointPrefix:Ljava/lang/String;

.field private volatile region:Lcom/amazon/kindle/com/amazonaws/regions/Region;

.field protected final requestHandler2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serviceName:Ljava/lang/String;

.field private volatile signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

.field private volatile signerRegionOverride:Ljava/lang/String;

.field protected timeOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

    .line 66
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->LOG:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 150
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    .line 151
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 169
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    .line 173
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private computeServiceName()Ljava/lang/String;
    .locals 4

    .line 802
    const-class v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "JavaClient"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "Client"

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 814
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized suffix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const-string v3, "Amazon"

    .line 819
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string v3, "AWS"

    .line 822
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    .line 824
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized prefix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v2, 0x6

    :goto_1
    if-ge v3, v1, :cond_5

    add-int/2addr v3, v2

    .line 836
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    invoke-static {p1, p2}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->getSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {v0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->getSignerByTypeAndService(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    .line 404
    :goto_0
    instance-of v0, p1, Lcom/amazon/kindle/com/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_2

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_1

    .line 411
    invoke-interface {v0, p3}, Lcom/amazon/kindle/com/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    .line 413
    invoke-interface {v0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    .line 417
    :cond_2
    :goto_1
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getRegion(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->region:Lcom/amazon/kindle/com/amazonaws/regions/Region;

    .line 419
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 1

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static isProfilingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.amazon.kindle.com.amazonaws.sdk.enableRuntimeProfiling"

    .line 594
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRMCEnabledAtClientOrSdkLevel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const-string v0, "://"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazon/kindle/com/amazonaws/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addRequestHandler(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequestHandler(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected configSigner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected configSigner(Ljava/net/URI;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected final createExecutionContext()Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 588
    :goto_1
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    return-object v1
.end method

.method protected createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
    .locals 2

    .line 567
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->isRequestMetricsEnabled(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 568
    :goto_1
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected final createExecutionContext(Lcom/amazon/kindle/com/amazonaws/Request;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object p1

    return-object p1
.end method

.method protected final endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    return-void
.end method

.method protected final endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 737
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 738
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    .line 739
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->findRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/Request;)Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 740
    invoke-virtual {v0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;->collectMetrics(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->log()V

    :cond_1
    return-void
.end method

.method protected final findRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/Request;)Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getRequestMetricsCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-nez p1, :cond_1

    .line 704
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEndpointPrefix()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()Lcom/amazon/kindle/com/amazonaws/regions/Regions;
    .locals 1

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->region:Lcom/amazon/kindle/com/amazonaws/regions/Region;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 488
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestMetricsCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceNameIntern()Ljava/lang/String;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 777
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 779
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method protected getSigner()Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    return-object v0
.end method

.method public getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method public final getSignerRegionOverride()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 664
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    return v0
.end method

.method protected final isRequestMetricsEnabled(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result p1

    return p1
.end method

.method public removeRequestHandler(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRequestHandler(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    .line 503
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->shutdown()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 505
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 506
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object v0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 221
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const/4 v0, 0x1

    .line 307
    invoke-direct {p0, p2, p3, p3, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p2

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    .line 311
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 312
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "://"

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v4, v3

    .line 461
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getEndpointPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 466
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 467
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%s.%s.%s"

    .line 464
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 472
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 476
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    .line 477
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 450
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No region provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setServiceNameIntern(Ljava/lang/String;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public final setSignerRegionOverride(Ljava/lang/String;)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object v0

    .line 858
    monitor-enter p0

    .line 859
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    .line 860
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 861
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 636
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->shutdown()V

    return-void
.end method

.method public withTimeOffset(I)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setTimeOffset(I)V

    return-object p0
.end method
