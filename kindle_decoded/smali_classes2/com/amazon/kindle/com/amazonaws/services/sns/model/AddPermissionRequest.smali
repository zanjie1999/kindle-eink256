.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "AddPermissionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aWSAccountIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private actionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    .line 95
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 96
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setTopicArn(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setLabel(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setAWSAccountIds(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setActionNames(Ljava/util/Collection;)V

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

    .line 427
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;

    if-nez v2, :cond_2

    return v1

    .line 429
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;

    .line 431
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

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

    .line 433
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 435
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

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

    .line 437
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 439
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

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

    .line 441
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 442
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 444
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

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

    .line 446
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 447
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getAWSAccountIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    return-object v0
.end method

.method public getActionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 411
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 412
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 416
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAWSAccountIds(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    return-void
.end method

.method public setActionNames(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopicArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AWSAccountIds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAWSAccountIds(Ljava/util/Collection;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setAWSAccountIds(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAWSAccountIds([Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 256
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 257
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withActionNames(Ljava/util/Collection;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->setActionNames(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withActionNames([Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 352
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 353
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLabel(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    return-object p0
.end method
