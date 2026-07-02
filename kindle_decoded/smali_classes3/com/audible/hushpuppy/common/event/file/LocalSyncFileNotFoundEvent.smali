.class public final Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;
.super Ljava/lang/Object;
.source "LocalSyncFileNotFoundEvent.java"


# instance fields
.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# virtual methods
.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalSyncFileNotFoundEvent{relationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileNotFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
