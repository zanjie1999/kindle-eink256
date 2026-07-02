.class public final Lcom/audible/relationship/domain/RelationshipMappingModification;
.super Ljava/lang/Object;
.source "RelationshipMappingModification.java"


# instance fields
.field private final addItemCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addItemCount"
    .end annotation
.end field

.field private final addRelationship:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "add"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteItemCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deleteItemCount"
    .end annotation
.end field

.field private final deleteRelationship:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delete"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 110
    const-class v1, Lcom/audible/relationship/domain/RelationshipMappingModification;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    check-cast p1, Lcom/audible/relationship/domain/RelationshipMappingModification;

    .line 116
    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->addRelationship:Ljava/util/List;

    iget-object v2, p1, Lcom/audible/relationship/domain/RelationshipMappingModification;->addRelationship:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteRelationship:Ljava/util/List;

    iget-object p1, p1, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteRelationship:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getAddRelationship()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->addRelationship:Ljava/util/List;

    return-object v0
.end method

.method public getDeleteRelationship()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteRelationship:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->addRelationship:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteRelationship:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelationshipMappingModification{addRelationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->addRelationship:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->addItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleteRelationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteRelationship:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/relationship/domain/RelationshipMappingModification;->deleteItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
