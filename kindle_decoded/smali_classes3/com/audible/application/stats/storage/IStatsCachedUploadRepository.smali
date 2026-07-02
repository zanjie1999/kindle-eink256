.class public interface abstract Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;
.super Ljava/lang/Object;
.source "IStatsCachedUploadRepository.java"


# virtual methods
.method public abstract clearErrorEvents([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
.end method

.method public abstract clearServerSyncedEvents(Ljava/util/Date;)V
.end method

.method public abstract clearStaleEvents()V
.end method

.method public abstract getReadyToDispatchEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceSyncedEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V
.end method

.method public abstract setEventsToCompleted(Ljava/util/Date;)V
.end method

.method public abstract setEventsToSynced([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Ljava/util/Date;)V
.end method

.method public abstract setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateEventListeningPosition(Ljava/lang/Long;)V
.end method

.method public abstract updateEventListeningTime(Ljava/util/Date;)V
.end method
