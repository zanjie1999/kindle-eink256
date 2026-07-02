.class public final Lcom/audible/hushpuppy/common/relationship/Companion;
.super Ljava/lang/Object;
.source "Companion.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/relationship/ICompanion;
.implements Ljava/io/Serializable;


# instance fields
.field private final acr:Lcom/audible/mobile/domain/ACR;

.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final assetType:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 43
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    .line 44
    iput-object p2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    .line 45
    iput-object p3, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/relationship/Companion;

    .line 117
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 123
    :cond_5
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_2
    return v2

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_8
    iget-object v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_3
    return v2

    .line 129
    :cond_9
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v3, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_a
    iget-object v1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    if-eqz v1, :cond_b

    :goto_4
    return v2

    .line 132
    :cond_b
    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_d

    :goto_5
    return v2

    :cond_d
    return v0
.end method

.method public getACR()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public getASIN()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAssetType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getSKU()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasASIN()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Companion{asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sku=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->sku:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/relationship/Companion;->assetType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
