.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;
.super Ljava/lang/Object;
.source "SetTopicAttributesRequestMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/com/amazonaws/Request<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 38
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;

    const-string v1, "AmazonSNS"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;-><init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "SetTopicAttributes"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2010-03-31"

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "TopicArn"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "AttributeName"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "AttributeValue"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 34
    :cond_3
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(SetTopicAttributesRequest)"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetTopicAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
