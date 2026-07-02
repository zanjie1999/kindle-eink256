.class public Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
.source "AWSSecurityTokenServiceClient.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;


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

    .line 140
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 0

    .line 325
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 327
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 329
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sts.amazonaws.com"

    .line 343
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "sts"

    .line 344
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/securitytoken/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/securitytoken/request.handler2s"

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

    .line 1171
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1172
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setTimeOffset(I)V

    .line 1173
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1176
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1180
    :cond_0
    invoke-virtual {p3, v1}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 1182
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    .line 1183
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {p2, v1}, Lcom/amazon/kindle/com/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1185
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public assumeRoleWithWebIdentity(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 706
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 710
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;-><init>()V

    .line 711
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 713
    :try_start_1
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 714
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v2

    .line 716
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 719
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

    .line 718
    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 719
    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 720
    throw v0
.end method
