.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "SetSubscriptionAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field private subscriptionArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setSubscriptionArn(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setAttributeName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->setAttributeValue(Ljava/lang/String;)V

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

    .line 297
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    if-nez v2, :cond_2

    return v1

    .line 299
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;

    .line 301
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

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

    .line 303
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 304
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 306
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

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

    .line 308
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 309
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 311
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

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

    .line 313
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 314
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionArn()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->subscriptionArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 284
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeValue:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionArn(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->subscriptionArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AttributeName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeName:Ljava/lang/String;

    return-object p0
.end method

.method public withAttributeValue(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->attributeValue:Ljava/lang/String;

    return-object p0
.end method

.method public withSubscriptionArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;->subscriptionArn:Ljava/lang/String;

    return-object p0
.end method
