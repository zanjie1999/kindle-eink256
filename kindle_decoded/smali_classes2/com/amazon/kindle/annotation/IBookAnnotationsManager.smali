.class public interface abstract Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
.super Ljava/lang/Object;
.source "IBookAnnotationsManager.java"


# virtual methods
.method public abstract clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
.end method

.method public abstract create(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract deleteAll()V
.end method

.method public abstract getJournalRevision()J
.end method

.method public abstract getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
.end method

.method public abstract persistJournal()V
.end method

.method public abstract readAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract updateBookId(Ljava/lang/String;)V
.end method

.method public abstract updateLpr(I[B)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method
