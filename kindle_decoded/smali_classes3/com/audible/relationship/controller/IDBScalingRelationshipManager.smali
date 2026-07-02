.class public interface abstract Lcom/audible/relationship/controller/IDBScalingRelationshipManager;
.super Ljava/lang/Object;
.source "IDBScalingRelationshipManager.java"


# virtual methods
.method public abstract clearAllRelationships()V
.end method

.method public abstract enable()V
.end method

.method public abstract listAllRelationships()Ljava/util/List;
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

.method public abstract requestAsinPairRelationship(Ljava/lang/String;)V
.end method

.method public abstract requestFullRelationship(Z)V
.end method

.method public abstract requestFullRelationshipForce()V
.end method

.method public abstract shutdown()V
.end method
