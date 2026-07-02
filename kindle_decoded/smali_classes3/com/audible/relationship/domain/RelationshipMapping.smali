.class public final Lcom/audible/relationship/domain/RelationshipMapping;
.super Ljava/lang/Object;
.source "RelationshipMapping.java"


# instance fields
.field private final companionMappingToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "companionMappingToken"
    .end annotation
.end field

.field private final relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "companionMappings"
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

    if-eqz p1, :cond_4

    .line 69
    const-class v1, Lcom/audible/relationship/domain/RelationshipMapping;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    check-cast p1, Lcom/audible/relationship/domain/RelationshipMapping;

    .line 75
    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMapping;->relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;

    iget-object p1, p1, Lcom/audible/relationship/domain/RelationshipMapping;->relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;

    invoke-virtual {v0, p1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public getCompanionMappingToken()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationshipMappingModifications()Lcom/audible/relationship/domain/RelationshipMappingModification;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMapping;->relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMapping;->relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelationshipMapping{companionMappingToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMapping;->companionMappingToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", relationshipMappingModifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipMapping;->relationshipMappingModifications:Lcom/audible/relationship/domain/RelationshipMappingModification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
