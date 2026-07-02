.class public interface abstract Lcom/audible/relationship/db/IRelationshipRequestStorage;
.super Ljava/lang/Object;
.source "IRelationshipRequestStorage.java"


# virtual methods
.method public abstract addRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z
.end method

.method public abstract getAllRequests()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/RelationshipRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllRequests()Z
.end method

.method public abstract removeRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z
.end method
