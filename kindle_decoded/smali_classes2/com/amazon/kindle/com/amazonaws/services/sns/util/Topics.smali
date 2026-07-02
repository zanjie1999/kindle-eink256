.class public Lcom/amazon/kindle/com/amazonaws/services/sns/util/Topics;
.super Ljava/lang/Object;
.source "Topics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subscribeQueue(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNS;Lcom/amazon/kindle/com/amazonaws/services/sqs/AmazonSQS;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-direct {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;

    .line 111
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withAttributeNames([Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v0

    .line 109
    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sqs/AmazonSQS;->getQueueAttributes(Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/GetQueueAttributesResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 113
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;-><init>()V

    new-array v3, v1, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    new-instance v5, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    sget-object v6, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v5, v6}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "topic-subscription-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->withId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    new-array v6, v1, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    sget-object v7, Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;

    aput-object v7, v6, v4

    .line 118
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->withPrincipals([Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    new-array v6, v1, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;

    sget-object v7, Lcom/amazon/kindle/com/amazonaws/auth/policy/actions/SQSActions;->SendMessage:Lcom/amazon/kindle/com/amazonaws/auth/policy/actions/SQSActions;

    aput-object v7, v6, v4

    .line 119
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->withActions([Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    new-array v6, v1, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;

    new-instance v7, Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;

    invoke-direct {v7, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v4

    .line 120
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->withResources([Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    new-array v1, v1, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;

    .line 121
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ConditionFactory;->newSourceArnCondition(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->withConditions([Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    aput-object v5, v3, v4

    .line 115
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->withStatements([Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;

    .line 123
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    invoke-direct {v2, p3, v1}, Lcom/amazon/kindle/com/amazonaws/services/sqs/model/SetQueueAttributesRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/sqs/AmazonSQS;->setQueueAttributes(Lcom/amazon/kindle/com/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V

    .line 129
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;-><init>()V

    .line 131
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->withEndpoint(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object p1

    const-string p3, "sqs"

    .line 132
    invoke-virtual {p1, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->withProtocol(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object p1

    .line 133
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object p1

    .line 130
    invoke-interface {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNS;->subscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;->getSubscriptionArn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
