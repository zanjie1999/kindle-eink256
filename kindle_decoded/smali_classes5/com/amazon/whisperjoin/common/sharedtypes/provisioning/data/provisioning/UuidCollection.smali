.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;
.super Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;
.source "UuidCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 23
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;->values:Ljava/util/Set;

    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    invoke-direct {v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
