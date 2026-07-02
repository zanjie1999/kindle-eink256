.class public interface abstract Lcom/audible/application/stats/StatsService;
.super Ljava/lang/Object;
.source "StatsService.java"


# virtual methods
.method public abstract connectionChangedUpdate()V
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetDatabase()V
.end method

.method public abstract resetDatabaseMetadata()V
.end method

.method public abstract resetSdcardBadgeIcons()V
.end method

.method public abstract startListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V
.end method

.method public abstract stopAndRecreateListeningEvent()V
.end method

.method public abstract stopListening()V
.end method

.method public abstract syncBadgeMetadata()V
.end method

.method public abstract updateStatsEndpoint(Ljava/net/URI;)V
.end method
