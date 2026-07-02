.class public interface abstract Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsync;
.super Ljava/lang/Object;
.source "AmazonSNSAsync.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNS;


# virtual methods
.method public abstract addPermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract addPermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract checkIfPhoneNumberIsOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract checkIfPhoneNumberIsOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract confirmSubscriptionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract confirmSubscriptionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createPlatformEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createPlatformEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract createTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteEndpointAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deletePlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deletePlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract deleteTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract getTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listEndpointsByPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listEndpointsByPlatformApplicationAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listPhoneNumbersOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listPhoneNumbersOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listPlatformApplicationsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listPlatformApplicationsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listSubscriptionsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listSubscriptionsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listSubscriptionsByTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listSubscriptionsByTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listTopicsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract listTopicsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract optInPhoneNumberAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract optInPhoneNumberAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract publishAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract publishAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract removePermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract removePermissionAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setEndpointAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setPlatformApplicationAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setSMSAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setSubscriptionAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setTopicAttributesAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract subscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract subscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract unsubscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract unsubscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
.end method
