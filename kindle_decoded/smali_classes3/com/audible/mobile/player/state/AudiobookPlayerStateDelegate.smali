.class public interface abstract Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.super Ljava/lang/Object;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;,
        Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    }
.end annotation


# virtual methods
.method public abstract authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getState()Lcom/audible/mobile/player/State;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
.end method

.method public abstract prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
.end method

.method public abstract seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
.end method

.method public abstract setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
.end method

.method public abstract setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
.end method

.method public abstract setVolume(F)Z
.end method

.method public abstract start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
.end method

.method public abstract stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
.end method
