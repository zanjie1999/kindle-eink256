.class public final Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;
.super Ljava/lang/Object;
.source "LocalAudiobookFileFoundEvent.java"


# instance fields
.field private final audiobookInfo:Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private final syncData:Lcom/audible/hushpuppy/sync/ISyncData;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;Lcom/audible/hushpuppy/sync/ISyncData;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 32
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->audiobookInfo:Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    .line 33
    iput-object p3, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-void
.end method


# virtual methods
.method public getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->audiobookInfo:Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    return-object v0
.end method

.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAudiobookFileFoundEvent{syncData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audiobookInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->audiobookInfo:Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
