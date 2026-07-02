.class public interface abstract Lcom/audible/mobile/player/audio/AudiobookPlayer;
.super Ljava/lang/Object;
.source "AudiobookPlayer.java"

# interfaces
.implements Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;


# virtual methods
.method public abstract addOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z
.end method

.method public abstract getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.end method

.method public abstract getTimeAvailable()I
.end method

.method public abstract isFileLoaded()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract removeOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z
.end method

.method public abstract reset()V
.end method

.method public abstract volumeBoost(Z)V
.end method
