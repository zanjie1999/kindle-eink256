.class public interface abstract Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNS;
.super Ljava/lang/Object;
.source "AmazonSNS.java"


# virtual methods
.method public abstract addPermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract addPermission(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract checkIfPhoneNumberIsOptedOut(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract confirmSubscription(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract confirmSubscription(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract confirmSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createPlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createPlatformEndpoint(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createTopic(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreateTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteEndpoint(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteEndpointRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deletePlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteTopic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;
.end method

.method public abstract getEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getPlatformApplicationAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetPlatformApplicationAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getSMSAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSMSAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getSubscriptionAttributes(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getTopicAttributes(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listEndpointsByPlatformApplication(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListEndpointsByPlatformApplicationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listPhoneNumbersOptedOut(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPhoneNumbersOptedOutResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listPlatformApplications()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listPlatformApplications(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptions()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptions(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptions(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptionsByTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptionsByTopic(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listSubscriptionsByTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listTopics()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listTopics(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listTopics(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract optInPhoneNumber(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract publish(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract removePermission(Lcom/amazon/kindle/com/amazonaws/services/sns/model/RemovePermissionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract removePermission(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setPlatformApplicationAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetPlatformApplicationAttributesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setSMSAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSMSAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setSubscriptionAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setSubscriptionAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setTopicAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setTopicAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract subscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/UnsubscribeRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method
