.class public final Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;
.super Ljava/lang/Object;
.source "LocalSyncFileFoundEvent.java"


# instance fields
.field private final eBookAsin:Lcom/audible/mobile/domain/Asin;

.field private final syncData:Lcom/audible/hushpuppy/sync/ISyncData;


# virtual methods
.method public getEBookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object v0
.end method
