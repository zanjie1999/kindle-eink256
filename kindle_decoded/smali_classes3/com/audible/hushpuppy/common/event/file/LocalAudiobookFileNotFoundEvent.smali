.class public Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;
.super Ljava/lang/Object;
.source "LocalAudiobookFileNotFoundEvent.java"


# instance fields
.field private final audioFileFound:Z

.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private final syncFileFound:Z


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 30
    iput-boolean p2, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->audioFileFound:Z

    .line 31
    iput-boolean p3, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->syncFileFound:Z

    return-void
.end method


# virtual methods
.method public final getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAudiobookFileNotFoundEvent{relationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioFileFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->audioFileFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", syncFileFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->syncFileFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasAudioFileFound()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->audioFileFound:Z

    return v0
.end method

.method public final wasSyncFileFound()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->syncFileFound:Z

    return v0
.end method
