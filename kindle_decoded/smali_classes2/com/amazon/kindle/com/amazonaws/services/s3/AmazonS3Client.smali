.class public Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;


# static fields
.field private static final BUCKET_REGION_CACHE_SIZE:I = 0x12c

.field private static final S3_SIGNER:Ljava/lang/String; = "S3SignerType"

.field private static final S3_V4_SIGNER:Ljava/lang/String; = "AWSS3V4SignerType"

.field private static final bucketConfigurationXmlFactory:Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final bucketRegionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final requestPaymentConfigurationXmlFactory:Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;


# instance fields
.field private final awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

.field private clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

.field volatile clientRegion:Ljava/lang/String;

.field private final completeMultipartUploadRetryCondition:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

.field private final errorResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private notificationThreshold:I

.field private final voidResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 180
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->values()[Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    .line 183
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    const-string v1, "S3SignerType"

    invoke-static {v1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;

    const-string v1, "AWSS3V4SignerType"

    invoke-static {v1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    .line 195
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 201
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->requestPaymentConfigurationXmlFactory:Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 224
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client$1;

    const/16 v1, 0x12c

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 220
    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->notificationThreshold:I

    .line 238
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 408
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 409
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;)V
    .locals 1

    .line 514
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 530
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V
    .locals 1

    .line 548
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p4, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p4, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V

    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p4, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    const/16 p4, 0x400

    .line 220
    iput p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->notificationThreshold:I

    .line 238
    new-instance p4, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 549
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 550
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->init(Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private static addAclHeaders(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .line 2036
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p1

    .line 2037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2038
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;

    .line 2039
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2040
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2044
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    .line 2045
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2046
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 2048
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2049
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const-string v9, ", "

    .line 2053
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :goto_3
    invoke-interface {v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-interface {v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2058
    :cond_3
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static addDateHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4697
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4644
    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addParameterIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4680
    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addResponseHeaderParameters(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 4730
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4732
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response-cache-control"

    .line 4731
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4734
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4736
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response-content-disposition"

    .line 4735
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4738
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4740
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response-content-encoding"

    .line 4739
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4742
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4744
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response-content-language"

    .line 4743
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4748
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response-content-type"

    .line 4747
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4752
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response-expires"

    .line 4751
    invoke-interface {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static addStringListHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4713
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4714
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 4343
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;

    .line 4345
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateContentLength(Ljava/io/InputStream;)J
    .locals 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 2019
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    .line 2021
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 2024
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p1

    .line 2026
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Could not calculate content length."

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private convertToVirtualHostEndpoint(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 4362
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bucket name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createSigV2Signer(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4284
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHttpMethod()Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private fetchRegionFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 5646
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5648
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5649
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket region cache doesn\'t have an entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Trying to get bucket region from Amazon S3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 5652
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->getBucketRegionViaHeadRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5654
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5657
    :cond_1
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5658
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 4022
    :cond_0
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 4023
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 4024
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private getBucketRegionViaHeadRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 5674
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    new-instance v5, Ljava/net/URI;

    const-string v0, "https://s3-us-west-1.amazonaws.com"

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v0

    .line 5677
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v0, v1, p1, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;

    .line 5679
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;->getBucketRegion()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5686
    :catch_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v1, "Error while creating URI"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5681
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5682
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-amz-bucket-region"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 5689
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5690
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to derive region of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the HEAD Bucket requests."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-object v6
.end method

.method private getHostStyleResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/"

    .line 5760
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getPathStyleResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSignerRegion()Ljava/lang/String;
    .locals 1

    .line 4266
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4268
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "s3.amazonaws.com"

    .line 606
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "s3"

    .line 607
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 609
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazon/kindle/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private init(Lcom/amazon/kindle/com/amazonaws/regions/Region;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 636
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    const-string p2, "s3"

    .line 637
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpointPrefix:Ljava/lang/String;

    const-string p2, "s3.amazonaws.com"

    .line 640
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V

    .line 643
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 644
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v0, "/com/amazon/kindle/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v0, "/com/amazon/kindle/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialized with endpoint = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Region cannot be null. Region is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials cannot be null. Credentials is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 4868
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 4869
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;

    move-result-object v2

    .line 4870
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    move-result-object v3

    .line 4872
    invoke-interface {p1, v3}, Lcom/amazon/kindle/com/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;)V

    .line 4879
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V

    const/4 v4, 0x0

    .line 4882
    :try_start_0
    iget v5, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->timeOffset:I

    invoke-interface {p1, v5}, Lcom/amazon/kindle/com/amazonaws/Request;->setTimeOffset(I)V

    .line 4889
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application/octet-stream"

    .line 4890
    invoke-interface {p1, v0, v5}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4897
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CreateBucketRequest;

    if-nez v0, :cond_1

    .line 4898
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->noExplicitRegionProvided(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4899
    invoke-direct {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fetchRegionFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 4902
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 4903
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4904
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 4906
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazon/kindle/com/amazonaws/auth/Signer;)V

    .line 4907
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 4908
    iget-object p4, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->client:Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {p4, p1, p2, v0, v2}, Lcom/amazon/kindle/com/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;)Lcom/amazon/kindle/com/amazonaws/Response;

    move-result-object v4

    .line 4910
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4930
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4920
    :try_start_1
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result p4

    const/16 v0, 0x12d

    if-ne p4, v0, :cond_3

    .line 4921
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 4922
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    const-string/jumbo v0, "x-amz-bucket-region"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 4923
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4924
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The bucket is in this region: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Please use this region to retry the request"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorMessage(Ljava/lang/String;)V

    .line 4928
    :cond_3
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4930
    :goto_0
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V

    .line 4931
    throw p2
.end method

.method private isSignerOverridden()Z
    .locals 1

    .line 4239
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    if-eqz v0, :cond_0

    .line 4240
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStandardEndpoint(Ljava/net/URI;)Z
    .locals 1

    .line 4274
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    .line 5774
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5775
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    .line 5778
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 5780
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_3

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private noExplicitRegionProvided(Lcom/amazon/kindle/com/amazonaws/Request;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 4254
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->isStandardEndpoint(Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4255
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->getSignerRegion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static populateRequestMetadata(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 4380
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4382
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;

    const-string/jumbo v2, "x-amz-server-side-encryption"

    .line 4384
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4383
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4385
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4390
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4395
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getHttpExpiresDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4397
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expires"

    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4400
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4402
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4406
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v0, :cond_5

    .line 4409
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4411
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x-amz-meta-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected static populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string/jumbo p1, "x-amz-request-payer"

    const-string v0, "requester"

    .line 5523
    invoke-interface {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 4566
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    .line 4565
    invoke-static {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4568
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key"

    .line 4567
    invoke-static {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4570
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4569
    invoke-static {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4574
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4575
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4576
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 4578
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Md5Utils;->md5AsBase64([B)Ljava/lang/String;

    move-result-object p1

    .line 4577
    invoke-interface {p0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static populateSSE_KMS(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4610
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getEncryption()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption"

    .line 4609
    invoke-static {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4613
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getAwsKmsKeyId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4611
    invoke-static {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setAWSS3V4SignerWithServiceNameAndRegion(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V
    .locals 1

    .line 4231
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method

.method private setZeroContentLength(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5046
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldRetryCompleteMultipartUpload(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;I)Z
    .locals 3

    .line 3615
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3617
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->getRetryCondition()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3621
    :cond_0
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->NO_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    if-ne v0, v2, :cond_1

    return v1

    .line 3625
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->completeMultipartUploadRetryCondition:Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 3626
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldUseVirtualAddressing(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 1

    .line 5748
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->isPathStyleAccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5749
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    const/high16 v0, 0x40000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-lez v0, :cond_0

    .line 5065
    :try_start_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    goto :goto_0

    .line 5069
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 5072
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5076
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1

    .line 5070
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Input stream exceeds 256k buffer."

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 5074
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Failed to read from inputstream"

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private urlEncodeTags(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    .line 5478
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5483
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5484
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5485
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;

    .line 5486
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5487
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5488
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&"

    .line 5489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5493
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public completeMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when completing a multipart upload"

    .line 3562
    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3565
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3566
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3567
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when completing a multipart upload"

    .line 3568
    invoke-static {v0, v3}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when completing a multipart upload"

    .line 3570
    invoke-static {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The upload ID parameter must be specified when completing a multipart upload"

    .line 3572
    invoke-static {v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3574
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v3

    const-string v4, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-static {v3, v4}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3580
    :goto_0
    sget-object v5, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v5

    const-string/jumbo v6, "uploadId"

    .line 3581
    invoke-interface {v5, v6, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V

    .line 3585
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B

    move-result-object v6

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    .line 3586
    invoke-interface {v5, v7, v8}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Length"

    invoke-interface {v5, v8, v7}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v5, v7}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3593
    new-instance v6, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v7, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v9, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v9, v8, v3

    new-instance v9, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    new-instance v10, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v10}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v10}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;[Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3601
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 3602
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3603
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    .line 3606
    :cond_0
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 3605
    invoke-direct {p0, p1, v6, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->shouldRetryCompleteMultipartUpload(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_0

    .line 3608
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    throw p1
.end method

.method protected final createExecutionContext(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
    .locals 2

    .line 4861
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

    .line 4862
    :goto_1
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4826
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;",
            "Ljava/net/URI;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 4831
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, p3, v1}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;-><init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 4836
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->isAccelerateModeEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4837
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p3

    instance-of p3, p3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez p3, :cond_1

    .line 4838
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->isDualstackEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4839
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    const-string p5, "s3-accelerate.dualstack.amazonaws.com"

    invoke-static {p5, p3}, Lcom/amazon/kindle/com/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    goto :goto_0

    .line 4842
    :cond_0
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    const-string p5, "s3-accelerate.amazonaws.com"

    invoke-static {p5, p3}, Lcom/amazon/kindle/com/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    .line 4847
    :cond_1
    :goto_0
    invoke-interface {v0, p4}, Lcom/amazon/kindle/com/amazonaws/Request;->setHttpMethod(Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)V

    .line 4848
    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method protected createSigner(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/auth/Signer;"
        }
    .end annotation

    .line 4168
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->isAccelerateModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    goto :goto_0

    .line 4170
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 4174
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object v0

    .line 4176
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->isSignerOverridden()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4177
    instance-of v1, v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->noExplicitRegionProvided(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4179
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    .line 4180
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_2

    .line 4188
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object v2

    const-string v3, "s3"

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-static {v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object v2

    .line 4185
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->resolveRequestEndpoint(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 4191
    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 4192
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setAWSS3V4SignerWithServiceNameAndRegion(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object v0

    .line 4194
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    if-eqz v1, :cond_3

    .line 4195
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createSigV2Signer(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    .line 4200
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->bucketRegionCache:Ljava/util/Map;

    .line 4201
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    goto :goto_2

    .line 4202
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 4204
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 4205
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setAWSS3V4SignerWithServiceNameAndRegion(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object p1

    .line 4210
    :cond_6
    instance-of v1, v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    if-eqz v1, :cond_7

    .line 4215
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createSigV2Signer(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method public generatePresignedUrl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when generating a pre-signed URL"

    .line 3430
    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 3434
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v0, "The bucket name parameter must be specified when generating a pre-signed URL"

    .line 3436
    invoke-static {v4, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3438
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    move-result-object v0

    const-string v1, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3441
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3442
    new-instance v0, Ljava/util/Date;

    .line 3443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v6, 0xdbba0

    add-long/2addr v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3442
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3446
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    move-result-object v0

    .line 3447
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3446
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    move-result-object v0

    .line 3454
    invoke-virtual {p0, v4, v5, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v0

    .line 3457
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "versionId"

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addParameterIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->isZeroByteContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3460
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3463
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v1

    .line 3464
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3463
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3465
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3468
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3469
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3473
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3480
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-server-side-encryption"

    .line 3479
    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKmsCmkId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 3482
    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getCustomQueryParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3489
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3494
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getResponseHeaders()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 3496
    invoke-virtual {p0, v0, v4, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object v1

    .line 3499
    instance-of v2, v1, Lcom/amazon/kindle/com/amazonaws/auth/Presigner;

    if-eqz v2, :cond_6

    .line 3502
    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/Presigner;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 3504
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 3505
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object p1

    .line 3502
    invoke-interface {v1, v0, v2, p1}, Lcom/amazon/kindle/com/amazonaws/auth/Presigner;->presignRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    goto :goto_2

    .line 3512
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    move-result-object v3

    .line 3515
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3510
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->presignRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    .line 3520
    invoke-static {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazon/kindle/com/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3401
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->GET:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazon/kindle/com/amazonaws/HttpMethod;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazon/kindle/com/amazonaws/HttpMethod;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 3414
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/HttpMethod;)V

    .line 3416
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3418
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    .line 1540
    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1548
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->GET:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 1547
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v0

    .line 1550
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "versionId"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "Range"

    .line 1566
    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V

    .line 1571
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 1574
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    const-string v3, "If-Modified-Since"

    .line 1573
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1576
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    const-string v3, "If-Unmodified-Since"

    .line 1575
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1578
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    const-string v3, "If-Match"

    .line 1577
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1580
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    const-string v3, "If-None-Match"

    .line 1579
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1583
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1590
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    move-result-object v1

    .line 1592
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v1

    .line 1595
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 1596
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1595
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;

    .line 1603
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    .line 1611
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/util/ServiceClientHolderInputStream;

    invoke-direct {v4, v3, p0}, Lcom/amazon/kindle/com/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    if-eqz v1, :cond_3

    .line 1618
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v3, v4, v1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1620
    invoke-virtual {v3, v2}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;->setFireCompletedEvent(Z)V

    .line 1621
    iget v4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->notificationThreshold:I

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;->setNotificationThreshold(I)V

    const/4 v4, 0x2

    .line 1623
    invoke-direct {p0, v1, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v4, v3

    .line 1631
    :cond_3
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1632
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1634
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1635
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1636
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "MD5"

    .line 1641
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1642
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/DigestValidationInputStream;

    invoke-direct {v3, v4, v2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1644
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v3, "No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity."

    invoke-interface {v2, v3, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1651
    :cond_4
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/util/LengthCheckInputStream;

    .line 1652
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v5

    invoke-direct {p1, v4, v5, v6, v2}, Lcom/amazon/kindle/com/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v4, p1

    .line 1661
    :cond_5
    :goto_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {p1, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_2
    .catch Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 1672
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x19c

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    .line 1678
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1680
    throw p1

    :cond_7
    :goto_1
    const/16 p1, 0x10

    .line 1673
    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initiateMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when initiating a multipart upload"

    .line 3638
    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3641
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3648
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 3646
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v0

    const-string/jumbo v1, "uploads"

    const/4 v2, 0x0

    .line 3650
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3654
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-storage-class"

    .line 3653
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3659
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-website-redirect-location"

    .line 3658
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3663
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    .line 3664
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3665
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    .line 3666
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-acl"

    .line 3665
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v1, :cond_4

    .line 3670
    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3673
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V

    .line 3676
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3680
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    .line 3679
    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_KMS(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 3684
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 3689
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3693
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v5, v4, v2

    invoke-direct {v1, v3, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;[Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3699
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3700
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 3698
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method protected presignRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "TT;>;",
            "Lcom/amazon/kindle/com/amazonaws/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4307
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 4309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, v2

    :goto_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "(?<=/)/"

    const-string p6, "%2F"

    .line 4319
    invoke-virtual {p3, p4, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4321
    iget-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {p4}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4322
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p6

    if-eqz p6, :cond_3

    .line 4323
    invoke-virtual {p6}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4324
    invoke-virtual {p6}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4327
    :cond_3
    new-instance p6, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p6, p2, p3, p5}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p6, p1, p4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 4335
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo p3, "x-amz-security-token"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4336
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4337
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public putObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Unable to cleanly close input stream: "

    const-string v3, "The PutObjectRequest parameter must be specified when uploading an object"

    .line 1787
    invoke-static {v0, v3}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1792
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v5

    .line 1793
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1800
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    move-result-object v7

    .line 1802
    invoke-static {v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v7

    if-nez v5, :cond_0

    .line 1805
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v8, "The bucket name parameter must be specified when uploading an object"

    .line 1808
    invoke-static {v3, v8}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "The key parameter must be specified when uploading an object"

    .line 1810
    invoke-static {v4, v8}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1813
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z

    move-result v8

    .line 1817
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    .line 1820
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 1822
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 1825
    :goto_0
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    .line 1826
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 1831
    :try_start_0
    invoke-static {v6}, Lcom/amazon/kindle/com/amazonaws/util/Md5Utils;->md5AsBase64(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 1832
    invoke-virtual {v5, v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1834
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate MD5 hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1840
    :cond_3
    :goto_1
    :try_start_1
    new-instance v9, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v9, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1842
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v3, "Unable to find file to upload"

    invoke-direct {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1846
    :cond_4
    :goto_2
    sget-object v9, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PUT:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-virtual {v1, v3, v4, v0, v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v9

    .line 1849
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1850
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_3

    .line 1851
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1852
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "x-amz-acl"

    invoke-interface {v9, v13, v12}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1856
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "x-amz-storage-class"

    invoke-interface {v9, v13, v12}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 1860
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "x-amz-website-redirect-location"

    invoke-interface {v9, v13, v12}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_8

    .line 1862
    invoke-direct {v1, v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 1863
    new-instance v6, Ljava/io/ByteArrayInputStream;

    new-array v12, v11, [B

    invoke-direct {v6, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1867
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getTagging()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->urlEncodeTags(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "x-amz-tagging"

    invoke-static {v9, v13, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays()Z

    move-result v12

    invoke-static {v9, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V

    .line 1872
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v12, "Content-Length"

    .line 1875
    invoke-virtual {v5, v12}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_a

    .line 1884
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1885
    sget-object v11, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v13, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v11, v13}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1888
    invoke-direct {v1, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v6

    .line 1889
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v12, v11}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-interface {v9, v10}, Lcom/amazon/kindle/com/amazonaws/Request;->setStreaming(Z)V

    goto :goto_4

    .line 1893
    :cond_9
    invoke-direct {v1, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->calculateContentLength(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 1894
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v12, v10}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1897
    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-ltz v10, :cond_b

    .line 1906
    new-instance v10, Lcom/amazon/kindle/com/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v10, v6, v14, v15, v11}, Lcom/amazon/kindle/com/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 1911
    invoke-virtual {v13}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v12, v6}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    .line 1916
    new-instance v10, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v10, v6, v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1917
    iget v6, v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->notificationThreshold:I

    invoke-virtual {v10, v6}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;->setNotificationThreshold(I)V

    const/4 v6, 0x2

    .line 1918
    invoke-direct {v1, v7, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v6, v10

    :cond_c
    const/4 v10, 0x0

    .line 1922
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    if-nez v8, :cond_d

    .line 1930
    new-instance v10, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v10, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v10

    .line 1933
    :cond_d
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    const-string v11, "application/octet-stream"

    .line 1938
    invoke-virtual {v5, v11}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1941
    :cond_e
    invoke-static {v9, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1942
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_KMS(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 1944
    invoke-interface {v9, v6}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const/16 v11, 0x8

    .line 1959
    :try_start_2
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {v1, v9, v0, v3, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1965
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazon/kindle/com/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 1968
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    nop

    .line 1972
    :goto_5
    invoke-virtual {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_f

    .line 1974
    invoke-virtual {v10}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    if-nez v8, :cond_11

    .line 1978
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 1979
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    .line 1981
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 1982
    :cond_10
    invoke-direct {v1, v7, v11}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1984
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v2, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_6
    const/4 v0, 0x4

    .line 1993
    invoke-direct {v1, v7, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1995
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1996
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 2001
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2004
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->setRequesterCharged(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1961
    :try_start_4
    invoke-direct {v1, v7, v11}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1962
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1965
    :goto_7
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazon/kindle/com/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 1968
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1970
    :catch_6
    :goto_8
    throw v3
.end method

.method public resolveRequestEndpoint(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 5732
    iget-object p4, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 5733
    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->shouldUseVirtualAddressing(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5734
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using virtual style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 5735
    invoke-direct {p0, p4, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->convertToVirtualHostEndpoint(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 5736
    invoke-direct {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->getHostStyleResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    goto :goto_0

    .line 5738
    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using path style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 5739
    invoke-interface {p1, p4}, Lcom/amazon/kindle/com/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    if-eqz p2, :cond_2

    .line 5741
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->getPathStyleResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 5744
    :cond_2
    :goto_0
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; Request: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s3-accelerate.amazonaws.com"

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    const-string v0, "s3.amazonaws.com"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3"

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    :cond_0
    return-void

    .line 669
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V
    .locals 0

    .line 685
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V

    .line 692
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    return-void
.end method

.method public uploadPart(Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when uploading a part"

    .line 3798
    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3801
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3802
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3803
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 3804
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    .line 3805
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    const-string v4, "The bucket name parameter must be specified when uploading a part"

    .line 3807
    invoke-static {v0, v4}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when uploading a part"

    .line 3809
    invoke-static {v1, v4}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when uploading a part"

    .line 3811
    invoke-static {v2, v4}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3813
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The part number parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3815
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "The part size parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazon/kindle/com/amazonaws/util/ValidationUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3818
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PUT:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object v11

    const-string/jumbo v4, "uploadId"

    .line 3820
    invoke-interface {v11, v4, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "partNumber"

    invoke-interface {v11, v4, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3825
    invoke-static {v11, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3828
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-MD5"

    invoke-static {v11, v4, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Length"

    invoke-interface {v11, v4, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v11, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateRequesterPaysHeader(Lcom/amazon/kindle/com/amazonaws/Request;Z)V

    .line 3837
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->populateSSE_C(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3840
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3841
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 3842
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3844
    :try_start_0
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;

    new-instance v5, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 3845
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 3846
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v4, 0x0

    .line 3856
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3857
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3864
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v4, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 3872
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    move-result-object p1

    .line 3874
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3877
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v5, v2, p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 3878
    iget v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->notificationThreshold:I

    invoke-virtual {v5, v2}, Lcom/amazon/kindle/com/amazonaws/event/ProgressReportingInputStream;->setNotificationThreshold(I)V

    const/16 v2, 0x400

    .line 3879
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v5

    .line 3883
    :cond_3
    :try_start_1
    invoke-interface {v11, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3884
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v11, v5, v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 3888
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3889
    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v1

    .line 3890
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v4

    .line 3892
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 3893
    :cond_4
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const/16 v1, 0x800

    .line 3902
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3905
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 3906
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    .line 3908
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 3909
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->setRequesterCharged(Z)V
    :try_end_1
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 3927
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v1, 0x1000

    .line 3914
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3923
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_7

    .line 3927
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3931
    :catch_2
    :cond_7
    throw p1

    :catch_3
    move-exception p1

    .line 3848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified file doesn\'t exist"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3851
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A File or InputStream must be specified when uploading part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
