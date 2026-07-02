.class public interface abstract Lcom/amazon/kindle/krx/sync/ISyncManager;
.super Ljava/lang/Object;
.source "ISyncManager.java"


# virtual methods
.method public abstract getManualSyncListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/sync/IManualSyncListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerManualSyncListener(Lcom/amazon/kindle/krx/sync/IManualSyncListener;)V
.end method

.method public abstract triggerFalkorATLSync()V
.end method

.method public abstract triggerToDoSync()V
.end method

.method public abstract updateAndSyncLPR(Lcom/amazon/kindle/krx/content/IBook;I)Z
.end method

.method public abstract updateFalkorLastReadEpisode(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end method
