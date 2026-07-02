.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityClient.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;


# instance fields
.field private awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

.field protected jsonErrorUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 231
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 0

    .line 279
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    .line 281
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 283
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    .line 288
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cognito-identity.us-east-1.amazonaws.com"

    .line 302
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "cognito-identity"

    .line 303
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/cognitoidentity/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/cognitoidentity/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;
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
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1638
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1639
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->setTimeOffset(I)V

    .line 1641
    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 1643
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1645
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1650
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1652
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1655
    :cond_0
    invoke-virtual {p3, v1}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 1656
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1658
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1647
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 1648
    throw p1
.end method


# virtual methods
.method public getCredentialsForIdentity(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 663
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 667
    :try_start_0
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 669
    :try_start_1
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;-><init>()V

    .line 670
    invoke-virtual {v4, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 672
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    :try_start_3
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 676
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;-><init>()V

    .line 677
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    .line 680
    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v3

    .line 682
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 684
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 674
    :goto_0
    :try_start_4
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 675
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 684
    :goto_1
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    .line 686
    throw v0
.end method

.method public getId(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 721
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 723
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    :try_start_0
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 729
    :try_start_1
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 731
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    :try_start_3
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 735
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;-><init>()V

    .line 736
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    .line 739
    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v3

    .line 741
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 743
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 744
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 733
    :goto_0
    :try_start_4
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 734
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 743
    :goto_1
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 744
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    .line 745
    throw v0
.end method

.method public getOpenIdToken(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 842
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 844
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 848
    :try_start_0
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 850
    :try_start_1
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 852
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    :try_start_3
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 856
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;-><init>()V

    .line 857
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    .line 860
    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v3

    .line 862
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 864
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 865
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 854
    :goto_0
    :try_start_4
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 855
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 864
    :goto_1
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    .line 865
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Z)V

    .line 866
    throw v0
.end method
