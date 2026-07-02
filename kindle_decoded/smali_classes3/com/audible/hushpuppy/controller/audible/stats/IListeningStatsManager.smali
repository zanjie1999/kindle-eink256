.class public interface abstract Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
.super Ljava/lang/Object;
.source "IListeningStatsManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsRecorder;


# virtual methods
.method public abstract clearStoredStatsData()V
.end method

.method public abstract connectionChangedUpdate()V
.end method

.method public abstract login()V
.end method

.method public abstract resetDatabaseMetadata()V
.end method

.method public abstract resetSdcardBadgeIcons()V
.end method

.method public abstract stopAndRecreateListeningEvent()V
.end method

.method public abstract syncBadgeMetadata()V
.end method

.method public abstract updateCurrentListeningEventTime()V
.end method
