.class public interface abstract Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;
.super Ljava/lang/Object;
.source "AudiobookPlayerEventListener.java"

# interfaces
.implements Lcom/audible/mobile/player/audio/FileRenameEventListener;


# virtual methods
.method public abstract onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
.end method

.method public abstract onError(Lcom/audible/mobile/player/Error;)V
.end method

.method public abstract onPlaybackPositionChange(I)V
.end method

.method public abstract onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
.end method

.method public abstract onVolumeChanged(FF)V
.end method
