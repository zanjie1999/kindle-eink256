.class public interface abstract Lcom/amazon/kcp/application/IAnnotationCache;
.super Ljava/lang/Object;
.source "IAnnotationCache.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IAnnotationUpdateHandler;


# virtual methods
.method public abstract getGarbleJournalUploadUrl()Z
.end method

.method public abstract getNumAnnotations()J
.end method

.method public abstract getNumNonPositionAnnotations()J
.end method

.method public abstract getRevision(Lcom/amazon/kindle/model/sync/annotation/IBookData;)J
.end method

.method public abstract isAnnotationSyncSuppressed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSyncAnnotationsOn()Z
.end method

.method public abstract resetJournal()V
.end method

.method public abstract serialize()V
.end method

.method public abstract setAnnotationSyncSuppressed(Z)V
.end method

.method public abstract setGarbleJournalUploadUrl(Z)V
.end method

.method public abstract setSyncAnnotationsOn(Z)V
.end method

.method public abstract uploadAndResetJournal(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/annotation/IUploadJournalsResult;",
            ">;)V"
        }
    .end annotation
.end method
