.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "PublishRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private message:Ljava/lang/String;

.field private messageAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private messageStructure:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private targetArn:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    .line 318
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setTopicArn(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    .line 426
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setTopicArn(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setMessage(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->setSubject(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMessageAttributesEntry(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 2

    .line 1532
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1536
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated keys ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clearMessageAttributesEntries()Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1549
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1607
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;

    if-nez v2, :cond_2

    return v1

    .line 1609
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;

    .line 1611
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

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

    .line 1613
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1615
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

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

    .line 1617
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1618
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1620
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

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

    .line 1622
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1623
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1625
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 1627
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1629
    :cond_12
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 1631
    :cond_15
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1633
    :cond_16
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 1635
    :cond_19
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1636
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1638
    :cond_1a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 1640
    :cond_1d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1641
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
            ">;"
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageStructure()Ljava/lang/String;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetArn()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->targetArn:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1587
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1588
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1590
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1591
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1592
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1594
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1596
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 1493
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    return-void
.end method

.method public setMessageStructure(Ljava/lang/String;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTargetArn(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->targetArn:Ljava/lang/String;

    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopicArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TargetArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getTargetArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subject: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageStructure: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->getMessageAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "}"

    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMessage(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    return-object p0
.end method

.method public withMessageAttributes(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;"
        }
    .end annotation

    .line 1512
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageAttributes:Ljava/util/Map;

    return-object p0
.end method

.method public withMessageStructure(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 1466
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    return-object p0
.end method

.method public withPhoneNumber(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public withTargetArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->targetArn:Ljava/lang/String;

    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    return-object p0
.end method
