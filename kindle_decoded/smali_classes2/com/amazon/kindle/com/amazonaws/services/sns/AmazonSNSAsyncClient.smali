.class public Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;
.super Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsync;


# static fields
.field private static final DEFAULT_THREAD_POOL_SIZE:I = 0xa


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 107
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 1

    const/16 v0, 0xa

    .line 125
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    .line 166
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    .line 144
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    const/16 v0, 0xa

    .line 184
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 225
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getMaxConnections()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    .line 248
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 204
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public addPermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$1;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public addPermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$2;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public checkIfPhoneNumberIsOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public checkIfPhoneNumberIsOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$4;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public confirmSubscriptionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$5;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public confirmSubscriptionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$6;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$7;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$8;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createPlatformEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$9;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createPlatformEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$10;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$11;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$12;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$13;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$14;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deletePlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$15;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deletePlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$16;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$17;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$19;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$20;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$21;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$22;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$23;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$24;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$25;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$26;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$27;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$28;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listEndpointsByPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$29;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listEndpointsByPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$30;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listPhoneNumbersOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$31;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$31;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listPhoneNumbersOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1676
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$32;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listPlatformApplicationsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1726
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$33;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$33;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listPlatformApplicationsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$34;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1813
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$35;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$35;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1850
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$36;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsByTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$37;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$37;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listSubscriptionsByTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$38;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listTopicsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1973
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$39;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$39;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listTopicsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public optInPhoneNumberAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public optInPhoneNumberAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$42;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public publishAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$43;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$43;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public publishAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2202
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$44;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public removePermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2242
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$45;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$45;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public removePermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$46;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$46;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2322
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$47;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$47;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2361
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$48;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2409
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$49;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$49;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2451
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$50;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$50;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2500
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$51;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$51;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2542
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$52;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$52;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2584
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$53;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$53;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2620
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$54;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$54;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$55;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$55;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2696
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$56;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$56;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->shutdown()V

    .line 272
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public subscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2740
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$57;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$57;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public subscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2777
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2824
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$59;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$59;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;",
            "Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2865
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$60;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$60;-><init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
