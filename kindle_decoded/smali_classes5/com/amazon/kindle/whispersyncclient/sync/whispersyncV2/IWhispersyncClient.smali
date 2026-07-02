.class public interface abstract Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;
.super Ljava/lang/Object;
.source "IWhispersyncClient.java"


# virtual methods
.method public abstract connect([Ljava/lang/String;)Z
.end method

.method public abstract delete(Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract deleteDataset(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract deregister()V
.end method

.method public abstract disconnect()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract syncAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method

.method public abstract unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract update(Ljava/lang/String;Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation
.end method
