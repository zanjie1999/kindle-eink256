.class public interface abstract Lcom/amazon/kindle/collections/ICollectionsSyncManager;
.super Ljava/lang/Object;
.source "ICollectionsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;
    }
.end annotation


# virtual methods
.method public abstract handleFullCollectionsSync()V
.end method

.method public abstract handleIncrementalCollectionsSync()V
.end method

.method public abstract handleStartupSync()V
.end method

.method public abstract handleUserAccountDeregistration()V
.end method

.method public abstract handleUserAccountRegistration()V
.end method

.method public abstract syncCollectionDelete(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract syncCollectionItemDelete(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract syncCollectionItemUpdate(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract syncCollectionUpdate(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method
