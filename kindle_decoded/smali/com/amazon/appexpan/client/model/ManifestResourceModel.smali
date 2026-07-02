.class public Lcom/amazon/appexpan/client/model/ManifestResourceModel;
.super Ljava/lang/Object;
.source "ManifestResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;
    }
.end annotation


# instance fields
.field private final location:Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final refName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refName"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 78
    const-class v2, Lcom/amazon/appexpan/client/model/ManifestResourceModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ManifestResourceModel;

    .line 85
    iget-object v2, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getLocation()Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->location:Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRefName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->refName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget v1, p0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestResourceModel(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
