.class public Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;
.super Ljava/lang/Object;
.source "ManifestResourceSetModel.java"


# instance fields
.field private allResources:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resources"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ManifestResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field private deliveryPriority:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deliveryPriority"
    .end annotation
.end field

.field private downloadStrategy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadStrategy"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private version:I
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

    .line 76
    const-class v2, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;

    .line 83
    iget-object v2, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAllResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ManifestResourceModel;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->allResources:Ljava/util/List;

    return-object v0
.end method

.method public getDeliveryPriority()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->deliveryPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStrategy()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->downloadStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget v1, p0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestResourceSetModel(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getDownloadStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getDeliveryPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getAllResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
