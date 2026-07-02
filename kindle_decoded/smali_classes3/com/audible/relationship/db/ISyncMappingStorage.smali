.class public interface abstract Lcom/audible/relationship/db/ISyncMappingStorage;
.super Ljava/lang/Object;
.source "ISyncMappingStorage.java"


# virtual methods
.method public abstract deleteAllSyncMappings()I
.end method

.method public abstract querySyncMapping(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;
.end method

.method public abstract saveSyncMapping(Lcom/audible/relationship/domain/SyncMapping;)Z
.end method
