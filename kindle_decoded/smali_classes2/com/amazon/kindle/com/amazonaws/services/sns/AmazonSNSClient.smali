.class public Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
.source "AmazonSNSClient.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNS;


# instance fields
.field private awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

.field protected final exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 166
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 223
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 0

    .line 271
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 273
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 275
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 248
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 250
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InvalidParameterValueExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InvalidParameterValueExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PlatformApplicationDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PlatformApplicationDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ThrottledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ThrottledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sns.us-east-1.amazonaws.com"

    .line 292
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "sns"

    .line 293
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/sns/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/sns/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "TX;",
            "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 2845
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 2846
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setTimeOffset(I)V

    .line 2847
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 2849
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 2850
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2851
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 2854
    :cond_0
    invoke-virtual {p3, v1}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 2856
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    .line 2857
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {p2, v1}, Lcom/amazon/kindle/com/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 2859
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addPermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 331
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 335
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 338
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 341
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 340
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 341
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 342
    throw v0
.end method

.method public addPermission(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2004
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;-><init>()V

    .line 2005
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setLabel(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setAWSAccountIds(Ljava/util/Collection;)V

    .line 2008
    invoke-virtual {v0, p4}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setActionNames(Ljava/util/Collection;)V

    .line 2009
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->addPermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)V

    return-void
.end method

.method public checkIfPhoneNumberIsOptedOut(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 379
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 383
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CheckIfPhoneNumberIsOptedOutRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CheckIfPhoneNumberIsOptedOutRequestMarshaller;-><init>()V

    .line 384
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CheckIfPhoneNumberIsOptedOutRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 387
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CheckIfPhoneNumberIsOptedOutResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CheckIfPhoneNumberIsOptedOutResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 392
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 391
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 392
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 393
    throw v0
.end method

.method public confirmSubscription(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 429
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 433
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;-><init>()V

    .line 434
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 437
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 442
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 441
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 442
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 443
    throw v0
.end method

.method public confirmSubscription(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2219
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;-><init>()V

    .line 2220
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setToken(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->confirmSubscription(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;

    move-result-object p1

    return-object p1
.end method

.method public confirmSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2177
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;-><init>()V

    .line 2178
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setToken(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setAuthenticateOnUnsubscribe(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->confirmSubscription(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;

    move-result-object p1

    return-object p1
.end method

.method public createPlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 509
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 513
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformApplicationRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformApplicationRequestMarshaller;-><init>()V

    .line 514
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformApplicationRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 517
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformApplicationResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformApplicationResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 522
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 521
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 522
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 523
    throw v0
.end method

.method public createPlatformEndpoint(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 574
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 578
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformEndpointRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformEndpointRequestMarshaller;-><init>()V

    .line 579
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformEndpointRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 581
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 582
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformEndpointResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreatePlatformEndpointResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 587
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 586
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 587
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 588
    throw v0
.end method

.method public createTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 622
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 626
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 628
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 629
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 630
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 633
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 632
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 633
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 634
    throw v0
.end method

.method public createTopic(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2299
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;-><init>()V

    .line 2300
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;->setName(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->createTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteEndpoint(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 665
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 667
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 671
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteEndpointRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteEndpointRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteEndpointRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 674
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 677
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 676
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 677
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 678
    throw v0
.end method

.method public deletePlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 708
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 712
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeletePlatformApplicationRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeletePlatformApplicationRequestMarshaller;-><init>()V

    .line 713
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeletePlatformApplicationRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 715
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 716
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 719
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 718
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 719
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 720
    throw v0
.end method

.method public deleteTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 748
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 752
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 755
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 758
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 757
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 758
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 759
    throw v0
.end method

.method public deleteTopic(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2329
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;-><init>()V

    .line 2330
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->deleteTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)V

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2839
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 792
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 794
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 798
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetEndpointAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetEndpointAttributesRequestMarshaller;-><init>()V

    .line 799
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetEndpointAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 801
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 802
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetEndpointAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetEndpointAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 804
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 807
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 806
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 807
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 808
    throw v0
.end method

.method public getPlatformApplicationAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 843
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 847
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetPlatformApplicationAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetPlatformApplicationAttributesRequestMarshaller;-><init>()V

    .line 848
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetPlatformApplicationAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 850
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 851
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetPlatformApplicationAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetPlatformApplicationAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 853
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 856
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 855
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 856
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 857
    throw v0
.end method

.method public getSMSAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 889
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 893
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSMSAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSMSAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSMSAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 895
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 896
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSMSAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSMSAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 898
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 901
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 900
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 901
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 902
    throw v0
.end method

.method public getSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 931
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 933
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 937
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;-><init>()V

    .line 938
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 940
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 941
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 943
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 946
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 945
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 946
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 947
    throw v0
.end method

.method public getSubscriptionAttributes(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1820
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;-><init>()V

    .line 1821
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;->setSubscriptionArn(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->getSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;

    move-result-object p1

    return-object p1
.end method

.method public getTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 979
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 983
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 985
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 986
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 988
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 991
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 990
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 991
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 992
    throw v0
.end method

.method public getTopicAttributes(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2038
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;-><init>()V

    .line 2039
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->getTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;

    move-result-object p1

    return-object p1
.end method

.method public listEndpointsByPlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1033
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1037
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListEndpointsByPlatformApplicationRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListEndpointsByPlatformApplicationRequestMarshaller;-><init>()V

    .line 1038
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListEndpointsByPlatformApplicationRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1040
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1041
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListEndpointsByPlatformApplicationResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListEndpointsByPlatformApplicationResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1044
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1047
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1046
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1047
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1048
    throw v0
.end method

.method public listPhoneNumbersOptedOut(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1089
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1093
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPhoneNumbersOptedOutRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPhoneNumbersOptedOutRequestMarshaller;-><init>()V

    .line 1094
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPhoneNumbersOptedOutRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1096
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1097
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPhoneNumbersOptedOutResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPhoneNumbersOptedOutResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1102
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1101
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1102
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1103
    throw v0
.end method

.method public listPlatformApplications()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2814
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;-><init>()V

    .line 2815
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listPlatformApplications(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;

    move-result-object v0

    return-object v0
.end method

.method public listPlatformApplications(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1143
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1147
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsRequestMarshaller;-><init>()V

    .line 1148
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1150
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1151
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1156
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1155
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1156
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1157
    throw v0
.end method

.method public listSubscriptions()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2672
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;-><init>()V

    .line 2673
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listSubscriptions(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1189
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1191
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1195
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1197
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1198
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1203
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1202
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1203
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1204
    throw v0
.end method

.method public listSubscriptions(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2705
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;-><init>()V

    .line 2706
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;->setNextToken(Ljava/lang/String;)V

    .line 2707
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listSubscriptions(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsByTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1239
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1243
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;-><init>()V

    .line 1244
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1246
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1247
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1249
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1252
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1251
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1252
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1253
    throw v0
.end method

.method public listSubscriptionsByTopic(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2739
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;-><init>()V

    .line 2740
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listSubscriptionsByTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsByTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2777
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;-><init>()V

    .line 2778
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;->setNextToken(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listSubscriptionsByTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;

    move-result-object p1

    return-object p1
.end method

.method public listTopics()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2098
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;-><init>()V

    .line 2099
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listTopics(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method

.method public listTopics(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1280
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1282
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1286
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1288
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1289
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1290
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1293
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1292
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1293
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1294
    throw v0
.end method

.method public listTopics(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2129
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;-><init>()V

    .line 2130
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;->setNextToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listTopics(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object p1

    return-object p1
.end method

.method public optInPhoneNumber(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1325
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1327
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1331
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1333
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1334
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1339
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1338
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1339
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1340
    throw v0
.end method

.method public publish(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1389
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1390
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1394
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PublishRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PublishRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PublishRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1396
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1397
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1398
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1401
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1400
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1401
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1402
    throw v0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2495
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;-><init>()V

    .line 2496
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setMessage(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->publish(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;

    move-result-object p1

    return-object p1
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2640
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;-><init>()V

    .line 2641
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setMessage(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setSubject(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->publish(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;

    move-result-object p1

    return-object p1
.end method

.method public removePermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1429
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1433
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1435
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1436
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1439
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1438
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1439
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1440
    throw v0
.end method

.method public removePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2069
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;-><init>()V

    .line 2070
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2071
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;->setLabel(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->removePermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)V

    return-void
.end method

.method public setEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1469
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1471
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1475
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetEndpointAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetEndpointAttributesRequestMarshaller;-><init>()V

    .line 1476
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetEndpointAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1478
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1479
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1482
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1481
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1482
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1483
    throw v0
.end method

.method public setPlatformApplicationAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1516
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1518
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1522
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetPlatformApplicationAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetPlatformApplicationAttributesRequestMarshaller;-><init>()V

    .line 1523
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetPlatformApplicationAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1525
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1526
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1529
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1528
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1529
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1530
    throw v0
.end method

.method public setSMSAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1567
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1568
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1572
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSMSAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSMSAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSMSAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1574
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1575
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSMSAttributesResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSMSAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1577
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1580
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1579
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1580
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1581
    throw v0
.end method

.method public setSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1608
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1610
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1614
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;-><init>()V

    .line 1615
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1618
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1620
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1621
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1620
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1621
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1622
    throw v0
.end method

.method public setSubscriptionAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1788
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;-><init>()V

    .line 1789
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setSubscriptionArn(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setAttributeName(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setAttributeValue(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->setSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V

    return-void
.end method

.method public setTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1647
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1649
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1653
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1655
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1656
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1658
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1659
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1658
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1659
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1660
    throw v0
.end method

.method public setTopicAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2258
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;-><init>()V

    .line 2259
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->setTopicArn(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->setAttributeName(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->setAttributeValue(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->setTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)V

    return-void
.end method

.method public subscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1691
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1692
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1693
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1697
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1699
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1700
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 1701
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1703
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1704
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1703
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1704
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1705
    throw v0
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1958
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;-><init>()V

    .line 1959
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setTopicArn(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setProtocol(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setEndpoint(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->subscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1737
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1738
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1739
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1743
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1745
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 1746
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1748
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1749
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1748
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1749
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 1750
    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2363
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;-><init>()V

    .line 2364
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;->setSubscriptionArn(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->unsubscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)V

    return-void
.end method
