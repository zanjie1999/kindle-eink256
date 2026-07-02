.class public interface abstract Lcom/amazon/kindle/annotation/IAnnotationsManager;
.super Ljava/lang/Object;
.source "IAnnotationsManager.java"


# virtual methods
.method public abstract downloadAnnotations(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract downloadAnnotationsIfRequested(Ljava/lang/String;)Z
.end method

.method public abstract downloadReadingPosition(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/kindle/krx/sync/LPRSyncType;",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V
.end method

.method public abstract getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
.end method

.method public abstract getBookAnnotationsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
.end method

.method public abstract getNumAnnotationsInCache()J
.end method

.method public abstract getSyncStatus()Z
.end method

.method public abstract removeInvalidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestAnnotationsDownload(Ljava/lang/String;)V
.end method

.method public abstract requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSyncStatus(Z)V
.end method

.method public abstract shouldUploadJournals(Z)Z
.end method

.method public abstract syncJournalAsync(Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end method

.method public abstract uploadJournals()Lcom/amazon/kindle/annotation/IUploadJournalsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
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
