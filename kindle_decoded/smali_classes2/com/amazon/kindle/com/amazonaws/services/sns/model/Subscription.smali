.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endpoint:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private subscriptionArn:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 332
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;

    if-nez v2, :cond_2

    return v1

    .line 334
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;

    .line 336
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

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

    .line 338
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 339
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 341
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

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

    .line 343
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 345
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

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

    .line 347
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 349
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

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

    .line 351
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 353
    :cond_12
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

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

    .line 355
    :cond_15
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionArn()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->subscriptionArn:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 317
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->owner:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionArn(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->subscriptionArn:Ljava/lang/String;

    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->topicArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Owner: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Endpoint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEndpoint(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public withOwner(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->owner:Ljava/lang/String;

    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public withSubscriptionArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->subscriptionArn:Ljava/lang/String;

    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Subscription;->topicArn:Ljava/lang/String;

    return-object p0
.end method
