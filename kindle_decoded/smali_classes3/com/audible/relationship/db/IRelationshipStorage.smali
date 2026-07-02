.class public interface abstract Lcom/audible/relationship/db/IRelationshipStorage;
.super Ljava/lang/Object;
.source "IRelationshipStorage.java"


# virtual methods
.method public abstract deleteAllRelationships()I
.end method

.method public abstract deleteRelationships(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteRelationshipsForOldSessionId()I
.end method

.method public abstract listRelationships()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryOwnedRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
.end method

.method public abstract queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
.end method

.method public abstract saveRelationships(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)Z"
        }
    .end annotation
.end method
