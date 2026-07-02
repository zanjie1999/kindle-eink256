.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "CreatePlatformApplicationRequest.java"

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

.field private name:Ljava/lang/String;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAttributesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 284
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

.method public clearAttributesEntries()Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
    .locals 1

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

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

    .line 340
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;

    if-nez v2, :cond_2

    return v1

    .line 342
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;

    .line 344
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

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

    .line 346
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 348
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

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

    .line 350
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 352
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

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

    .line 354
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 355
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
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

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_2
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

    .line 236
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->platform:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformApplicationRequest;->platform:Ljava/lang/String;

    return-object p0
.end method
