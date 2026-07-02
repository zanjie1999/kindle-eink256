.class public interface abstract Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;
.super Ljava/lang/Object;
.source "ISyncUpdateHandler.java"


# virtual methods
.method public abstract onDatasetAdd(Ljava/lang/String;)V
.end method

.method public abstract onDatasetRemove(Ljava/lang/String;)V
.end method

.method public abstract onDelete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation
.end method
