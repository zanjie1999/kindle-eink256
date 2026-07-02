.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "ConfirmSubscriptionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authenticateOnUnsubscribe:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->setAuthenticateOnUnsubscribe(Ljava/lang/String;)V

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

    .line 323
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;

    if-nez v2, :cond_2

    return v1

    .line 325
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;

    .line 327
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

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

    .line 329
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 331
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

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

    .line 333
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 335
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 336
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

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

    .line 338
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 339
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getAuthenticateOnUnsubscribe()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->authenticateOnUnsubscribe:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 307
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 311
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setAuthenticateOnUnsubscribe(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->authenticateOnUnsubscribe:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->topicArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopicArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticateOnUnsubscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->getAuthenticateOnUnsubscribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAuthenticateOnUnsubscribe(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->authenticateOnUnsubscribe:Ljava/lang/String;

    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->token:Ljava/lang/String;

    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ConfirmSubscriptionRequest;->topicArn:Ljava/lang/String;

    return-object p0
.end method
