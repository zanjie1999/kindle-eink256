.class public interface abstract Lcom/google/android/exoplayer2/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Player$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract stop()V
.end method
