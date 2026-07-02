.class public Lcom/amazon/nwstd/resources/DynamicResource;
.super Ljava/lang/Object;
.source "DynamicResource.java"


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field private mParentASIN:Ljava/lang/String;

.field private mReference:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;

.field private mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 49
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 50
    iput-object p2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 51
    iput-object p3, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    .line 158
    :cond_1
    const-class v2, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 161
    :cond_2
    check-cast p1, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 162
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 163
    iget-object v2, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 166
    :cond_3
    iget-object v3, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 170
    iget-object v2, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 173
    :cond_5
    iget-object v3, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 176
    :cond_6
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 177
    iget-object v2, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 180
    :cond_7
    iget-object v3, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 183
    :cond_8
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v3, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    if-eq v2, v3, :cond_9

    return v1

    .line 186
    :cond_9
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    iget-object p1, p1, Lcom/amazon/nwstd/resources/DynamicResource;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-eq v2, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginType()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object v0
.end method

.method public getParentASIN()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v3, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 145
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v2, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResource;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicResource [mParentASIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mParentASIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mType:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/resources/DynamicResource;->mReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
