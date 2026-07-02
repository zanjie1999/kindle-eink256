.class public interface abstract Lcom/amazon/kindle/content/IBookOwnershipRecorder;
.super Ljava/lang/Object;
.source "IBookOwnershipRecorder.java"


# virtual methods
.method public abstract addOwnership(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOwners(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeOwnership(Lcom/amazon/kindle/model/content/IBookID;)V
.end method
