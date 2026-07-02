.class public final Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;
.super Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;
.source "AudioBookReadyForPlaybackEvent.java"


# instance fields
.field private final audioFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;-><init>(Lcom/audible/mobile/domain/Identifier;)V

    .line 29
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->audioFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudioFile()Ljava/io/File;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->audioFile:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioBookReadyForPlaybackEvent{asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->audioFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
