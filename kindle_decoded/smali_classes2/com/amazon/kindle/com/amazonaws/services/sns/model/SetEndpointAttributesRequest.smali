.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "SetEndpointAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endpointArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAttributesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 366
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

.method public clearAttributesEntries()Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

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

    .line 420
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    if-nez v2, :cond_2

    return v1

    .line 422
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    .line 424
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

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

    .line 426
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 427
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 429
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

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

    .line 431
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 432
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getEndpointArn()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->endpointArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 408
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setEndpointArn(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->endpointArn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndpointArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getEndpointArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public withEndpointArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->endpointArn:Ljava/lang/String;

    return-object p0
.end method
