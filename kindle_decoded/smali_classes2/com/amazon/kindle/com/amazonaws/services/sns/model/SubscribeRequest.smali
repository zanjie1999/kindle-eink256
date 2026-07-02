.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "SubscribeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endpoint:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 270
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setTopicArn(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setProtocol(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1031
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    if-nez v2, :cond_2

    return v1

    .line 1033
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    .line 1035
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 1037
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1039
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 1041
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1043
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 1045
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1018
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1019
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1020
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopicArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 1009
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEndpoint(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    return-object p0
.end method
