.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "CreatePlatformEndpointRequest.java"

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

.field private customUserData:Ljava/lang/String;

.field private platformApplicationArn:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAttributesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 343
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

.method public clearAttributesEntries()Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

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

    .line 406
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    if-nez v2, :cond_2

    return v1

    .line 408
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    .line 410
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

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

    .line 412
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 413
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 415
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

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

    .line 417
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 419
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

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

    .line 421
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 422
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 424
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

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

    .line 426
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 427
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
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

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomUserData()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->customUserData:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformApplicationArn()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->platformApplicationArn:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 394
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 395
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_3
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

    .line 295
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setCustomUserData(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->customUserData:Ljava/lang/String;

    return-void
.end method

.method public setPlatformApplicationArn(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->platformApplicationArn:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlatformApplicationArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomUserData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getCustomUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public withCustomUserData(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->customUserData:Ljava/lang/String;

    return-object p0
.end method

.method public withPlatformApplicationArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->platformApplicationArn:Ljava/lang/String;

    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->token:Ljava/lang/String;

    return-object p0
.end method
