.class public interface abstract Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
.super Ljava/lang/Object;
.source "IHushpuppyStorage.java"


# virtual methods
.method public abstract clearAllRelationships()V
.end method

.method public abstract getAllRelationships()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
.end method

.method public abstract getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
.end method
