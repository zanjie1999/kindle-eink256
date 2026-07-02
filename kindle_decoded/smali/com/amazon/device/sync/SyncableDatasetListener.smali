.class public interface abstract Lcom/amazon/device/sync/SyncableDatasetListener;
.super Ljava/lang/Object;
.source "SyncableDatasetListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Change<",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract onConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "TT;>;>;)V"
        }
    .end annotation
.end method
