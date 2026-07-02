.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;
.super Ljava/lang/Object;
.source "SubscriptionStaxMarshaller.java"


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;

    .line 61
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SubscriptionStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionArn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Endpoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TopicArn"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
