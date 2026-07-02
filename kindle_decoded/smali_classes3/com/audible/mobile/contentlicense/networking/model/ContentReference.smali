.class public Lcom/audible/mobile/contentlicense/networking/model/ContentReference;
.super Ljava/lang/Object;
.source "ContentReference.java"


# instance fields
.field private acr:Lcom/audible/mobile/domain/ACR;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acr"
    .end annotation
.end field

.field private asin:Lcom/audible/mobile/domain/Asin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asin"
    .end annotation
.end field

.field private codec:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_format"
    .end annotation
.end field

.field private productId:Lcom/audible/mobile/domain/ProductId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sku"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 78
    :cond_2
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    .line 80
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v1, :cond_6

    :goto_1
    return v2

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_8

    :goto_2
    return v2

    .line 92
    :cond_8
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    if-eqz v1, :cond_a

    :goto_3
    return v2

    .line 96
    :cond_a
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->version:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_b
    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getAcr()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 102
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->version:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content reference{asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
